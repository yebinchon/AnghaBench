
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_cfg {int dummy; } ;
struct TYPE_2__ {struct irq_cfg* chip_data; } ;


 int __clear_irq_vector (unsigned int,struct irq_cfg*) ;
 int dynamic_irq_cleanup_keep_chip_data (unsigned int) ;
 int free_irte (unsigned int) ;
 TYPE_1__* irq_to_desc (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vector_lock ;

void destroy_irq(unsigned int irq)
{
 unsigned long flags;
 struct irq_cfg *cfg;

 dynamic_irq_cleanup_keep_chip_data(irq);

 free_irte(irq);
 spin_lock_irqsave(&vector_lock, flags);
 cfg = irq_to_desc(irq)->chip_data;
 __clear_irq_vector(irq, cfg);
 spin_unlock_irqrestore(&vector_lock, flags);
}
