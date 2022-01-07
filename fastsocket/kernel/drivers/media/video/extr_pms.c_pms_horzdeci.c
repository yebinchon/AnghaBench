
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mvv_write (int,short) ;

__attribute__((used)) static void pms_horzdeci(short decinum, short deciden)
{
 if(decinum<=512)
 {
  if(decinum%5==0)
  {
   decinum/=5;
   deciden/=5;
  }
 }
 else
 {
  decinum=512;
  deciden=640;
 }

 while(((decinum|deciden)&1)==0)
 {
  decinum>>=1;
  deciden>>=1;
 }
 while(deciden>32)
 {
  deciden>>=1;
  decinum=(decinum+1)>>1;
 }
 if(deciden==32)
  deciden--;

 mvv_write(0x24, 0x80|deciden);
 mvv_write(0x25, decinum);
}
