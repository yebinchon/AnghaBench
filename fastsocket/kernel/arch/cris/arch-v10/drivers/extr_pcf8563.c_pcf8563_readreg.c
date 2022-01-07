
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char rtc_read (int) ;

unsigned char
pcf8563_readreg(int reg)
{
 unsigned char res = rtc_read(reg);


 switch (reg) {
 case 130:
 case 132:
  res &= 0x7F;
  break;
 case 133:
 case 134:
  res &= 0x3F;
  break;
 case 128:
  res &= 0x07;
  break;
 case 131:
  res &= 0x1F;
  break;
 case 136:
  res &= 0xA8;
  break;
 case 135:
  res &= 0x1F;
  break;
 case 137:
 case 129:
  res &= 0x83;
  break;
 }
 return res;
}
