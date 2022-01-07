
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 unsigned int CPU_REG (int ,int ) ;
 unsigned int IRQ_TIMER1 ;
 int TIMER_TOPSTAT ;
 int TIMER_VIRT ;
 unsigned int TSTAT_T0INT ;
 int generic_handle_irq (unsigned int) ;
 int timer_tick () ;

__attribute__((used)) static void
h7202_timerx_demux_handler(unsigned int irq_unused, struct irq_desc *desc)
{
 unsigned int mask, irq;

 mask = CPU_REG (TIMER_VIRT, TIMER_TOPSTAT);

 if ( mask & TSTAT_T0INT ) {
  timer_tick();
  if( mask == TSTAT_T0INT )
   return;
 }

 mask >>= 1;
 irq = IRQ_TIMER1;
 while (mask) {
  if (mask & 1)
   generic_handle_irq(irq);
  irq++;
  mask >>= 1;
 }
}
