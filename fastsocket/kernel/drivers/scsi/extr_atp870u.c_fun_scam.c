
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atp_unit {int* ioport; } ;


 int inw (unsigned int) ;
 int outw (unsigned short,unsigned int) ;

__attribute__((used)) static unsigned char fun_scam(struct atp_unit *dev, unsigned short int *val)
{
 unsigned int tmport;
 unsigned short int i, k;
 unsigned char j;

 tmport = dev->ioport[0] + 0x1c;
 outw(*val, tmport);
FUN_D7:
 for (i = 0; i < 10; i++) {
  k = inw(tmport);
  j = (unsigned char) (k >> 8);
  if ((k & 0x8000) != 0) {
   goto FUN_D7;
  }
 }
 *val |= 0x4000;
 outw(*val, tmport);
 *val &= 0xdfff;
 outw(*val, tmport);
FUN_D5:
 for (i = 0; i < 10; i++) {
  if ((inw(tmport) & 0x2000) != 0) {
   goto FUN_D5;
  }
 }
 *val |= 0x8000;
 *val &= 0xe0ff;
 outw(*val, tmport);
 *val &= 0xbfff;
 outw(*val, tmport);
FUN_D6:
 for (i = 0; i < 10; i++) {
  if ((inw(tmport) & 0x4000) != 0) {
   goto FUN_D6;
  }
 }

 return j;
}
