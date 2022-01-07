
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BSY_ASSERTED ;
 int FALSE ;
 scalar_t__ REG_LCL_INTR ;
 int TRUE ;
 int inb (scalar_t__) ;
 int udelay (long) ;

__attribute__((used)) static int wait_on_busy(unsigned long iobase, unsigned int loop) {

   while (inb(iobase + REG_LCL_INTR) & BSY_ASSERTED) {
      udelay(1L);
      if (--loop == 0) return TRUE;
      }

   return FALSE;
}
