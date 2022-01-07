
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static int mceusb_cmdsize(u8 cmd, u8 subcmd)
{
 int datasize = 0;

 switch (cmd) {
 case 130:
  if (subcmd == 129)
   datasize = 1;
  break;
 case 129:
  switch (subcmd) {
  case 138:
   datasize = 2;
   break;
  }
 case 131:
  switch (subcmd) {
  case 132:
  case 136:
  case 134:
  case 128:
   datasize = 2;
   break;
  case 137:
  case 133:
  case 135:
   datasize = 1;
   break;
  }
 }
 return datasize;
}
