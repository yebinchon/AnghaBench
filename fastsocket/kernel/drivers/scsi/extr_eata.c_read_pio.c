
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;


 int DRQ_ASSERTED ;
 unsigned int MAXLOOP ;
 int REG2H (int ) ;
 scalar_t__ REG_STATUS ;
 int inb (scalar_t__) ;
 int inw (unsigned long) ;
 int udelay (long) ;

__attribute__((used)) static int read_pio(unsigned long iobase, ushort * start, ushort * end)
{
 unsigned int loop = MAXLOOP;
 ushort *p;

 for (p = start; p <= end; p++) {
  while (!(inb(iobase + REG_STATUS) & DRQ_ASSERTED)) {
   udelay(1L);
   if (--loop == 0)
    return 1;
  }
  loop = MAXLOOP;
  *p = REG2H(inw(iobase));
 }

 return 0;
}
