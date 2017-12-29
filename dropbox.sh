
ln -s ~/Dropbox\ \(HMS\)/ ~/DropboxHMS
ln -s ~/Dropbox\ \(Personal\)/ ~/Dropbox

# open and close sublime text
open /Applications/Sublime\ Text.app/ &&  sleep 0.4  &&  kill $(ps -ax | grep Sublime\ Text | head -c 5)
# then link sync folder
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/DropboxHMS/Sync/Sublime/User

touch ~/.bash_profile
#echo "export PATH=~/anaconda3/bin:$PATH" >> ~/.bash_profile  # using manual installer instead
echo "source ~/Dropbox/Documents/bash/bash_profile" >> ~/.bash_profile

cp ~/DropboxHMS/Fiji/LUTs/* /Applications/Fiji.app/luts/
