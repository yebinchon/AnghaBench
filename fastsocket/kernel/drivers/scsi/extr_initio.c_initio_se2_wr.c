
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int SE2CLK ;
 int SE2CS ;
 int SE2DI ;
 int SE2DO ;
 scalar_t__ TUL_NVRAM ;
 int inb (scalar_t__) ;
 int initio_se2_instr (unsigned long,int) ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void initio_se2_wr(unsigned long base, u8 addr, u16 val)
{
 u8 rb;
 u8 instr;
 int i;

 instr = (u8) (addr | 0x40);
 initio_se2_instr(base, instr);
 for (i = 15; i >= 0; i--) {
  if (val & 0x8000)
   outb(SE2CS | SE2DO, base + TUL_NVRAM);
  else
   outb(SE2CS, base + TUL_NVRAM);
  udelay(30);
  outb(SE2CS | SE2CLK, base + TUL_NVRAM);
  udelay(30);
  val <<= 1;
 }
 outb(SE2CS, base + TUL_NVRAM);
 udelay(30);
 outb(0, base + TUL_NVRAM);
 udelay(30);

 outb(SE2CS, base + TUL_NVRAM);
 udelay(30);

 for (;;) {
  outb(SE2CS | SE2CLK, base + TUL_NVRAM);
  udelay(30);
  outb(SE2CS, base + TUL_NVRAM);
  udelay(30);
  if ((rb = inb(base + TUL_NVRAM)) & SE2DI)
   break;
 }
 outb(0, base + TUL_NVRAM);
}
