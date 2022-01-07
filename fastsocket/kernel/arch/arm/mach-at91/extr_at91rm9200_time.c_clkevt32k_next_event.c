
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clock_event_device {int dummy; } ;


 int AT91_ST_RTAR ;
 int AT91_ST_SR ;
 int BUG_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int at91_sys_read (int ) ;
 int at91_sys_write (int ,unsigned long) ;
 int raw_irqs_disabled_flags (unsigned long) ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 unsigned long read_CRTR () ;

__attribute__((used)) static int
clkevt32k_next_event(unsigned long delta, struct clock_event_device *dev)
{
 unsigned long flags;
 u32 alm;
 int status = 0;

 BUG_ON(delta < 2);


 raw_local_irq_save(flags);
 WARN_ON_ONCE(!raw_irqs_disabled_flags(flags));
 alm = read_CRTR();


 at91_sys_write(AT91_ST_RTAR, alm);
 (void) at91_sys_read(AT91_ST_SR);


 alm += delta;
 at91_sys_write(AT91_ST_RTAR, alm);

 raw_local_irq_restore(flags);
 return status;
}
