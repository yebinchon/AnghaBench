
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SE2CLK ;
 int SE2CS ;
 int SE2DO ;
 scalar_t__ TUL_NVRAM ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void initio_se2_instr(unsigned long base, u8 instr)
{
 int i;
 u8 b;

 outb(SE2CS | SE2DO, base + TUL_NVRAM);
 udelay(30);
 outb(SE2CS | SE2CLK | SE2DO, base + TUL_NVRAM);
 udelay(30);

 for (i = 0; i < 8; i++) {
  if (instr & 0x80)
   b = SE2CS | SE2DO;
  else
   b = SE2CS;
  outb(b, base + TUL_NVRAM);
  udelay(30);
  outb(b | SE2CLK, base + TUL_NVRAM);
  udelay(30);
  instr <<= 1;
 }
 outb(SE2CS, base + TUL_NVRAM);
 udelay(30);
}
