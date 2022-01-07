
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int ETIME ;
 int MIN_OSCR_DELTA ;
 int OIER ;
 int OIER_E0 ;
 unsigned long OSCR ;
 unsigned long OSMR0 ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static int
sa1100_osmr0_set_next_event(unsigned long delta, struct clock_event_device *c)
{
 unsigned long flags, next, oscr;

 raw_local_irq_save(flags);
 OIER |= OIER_E0;
 next = OSCR + delta;
 OSMR0 = next;
 oscr = OSCR;
 raw_local_irq_restore(flags);

 return (signed)(next - oscr) <= MIN_OSCR_DELTA ? -ETIME : 0;
}
