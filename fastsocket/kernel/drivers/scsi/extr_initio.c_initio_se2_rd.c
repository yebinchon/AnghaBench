
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int SE2CLK ;
 int SE2CS ;
 int SE2DI ;
 scalar_t__ TUL_NVRAM ;
 int inb (scalar_t__) ;
 int initio_se2_instr (unsigned long,int) ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static u16 initio_se2_rd(unsigned long base, u8 addr)
{
 u8 instr, rb;
 u16 val = 0;
 int i;

 instr = (u8) (addr | 0x80);
 initio_se2_instr(base, instr);

 for (i = 15; i >= 0; i--) {
  outb(SE2CS | SE2CLK, base + TUL_NVRAM);
  udelay(30);
  outb(SE2CS, base + TUL_NVRAM);


  rb = inb(base + TUL_NVRAM);
  rb &= SE2DI;
  val += (rb << i);
  udelay(30);
 }

 outb(0, base + TUL_NVRAM);
 udelay(30);
 return val;
}
