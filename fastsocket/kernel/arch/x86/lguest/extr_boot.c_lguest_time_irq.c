
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 TYPE_1__ lguest_clockevent ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void lguest_time_irq(unsigned int irq, struct irq_desc *desc)
{
 unsigned long flags;


 local_irq_save(flags);
 lguest_clockevent.event_handler(&lguest_clockevent);
 local_irq_restore(flags);
}
