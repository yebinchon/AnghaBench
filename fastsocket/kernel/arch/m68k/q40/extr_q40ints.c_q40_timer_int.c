
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 unsigned char* DAC_LEFT ;
 unsigned char* DAC_RIGHT ;
 int IRQ_HANDLED ;
 int SVOL ;
 int q40_timer_routine (int,void*) ;
 int ql_ticks ;
 int sound_ticks ;

__attribute__((used)) static irqreturn_t q40_timer_int (int irq, void * dev)
{
 ql_ticks = ql_ticks ? 0 : 1;
 if (sound_ticks) {
  unsigned char sval=(sound_ticks & 1) ? 128-SVOL : 128+SVOL;
  sound_ticks--;
  *DAC_LEFT=sval;
  *DAC_RIGHT=sval;
 }

 if (!ql_ticks)
  q40_timer_routine(irq, dev);
 return IRQ_HANDLED;
}
