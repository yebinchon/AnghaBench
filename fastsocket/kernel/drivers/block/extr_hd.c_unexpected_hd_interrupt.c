
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BUSY_STAT ;
 unsigned int DRQ_STAT ;
 unsigned int ECC_STAT ;
 unsigned int ERR_STAT ;
 int HD_STATUS ;
 int SET_TIMER ;
 int dump_status (char*,unsigned int) ;
 unsigned int inb_p (int ) ;

__attribute__((used)) static void unexpected_hd_interrupt(void)
{
 unsigned int stat = inb_p(HD_STATUS);

 if (stat & (BUSY_STAT|DRQ_STAT|ECC_STAT|ERR_STAT)) {
  dump_status("unexpected interrupt", stat);
  SET_TIMER;
 }
}
