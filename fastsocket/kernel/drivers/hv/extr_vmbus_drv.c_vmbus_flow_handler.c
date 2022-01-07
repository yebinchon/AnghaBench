
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* action; } ;
struct TYPE_2__ {int dev_id; int (* handler ) (unsigned int,int ) ;} ;


 int kstat_incr_irqs_this_cpu (unsigned int,struct irq_desc*) ;
 int stub1 (unsigned int,int ) ;

__attribute__((used)) static void vmbus_flow_handler(unsigned int irq, struct irq_desc *desc)
{
 kstat_incr_irqs_this_cpu(irq, desc);

 desc->action->handler(irq, desc->action->dev_id);
}
