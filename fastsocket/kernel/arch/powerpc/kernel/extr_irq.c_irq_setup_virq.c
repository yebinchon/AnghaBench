
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct irq_host {TYPE_1__* ops; } ;
typedef int irq_hw_number_t ;
struct TYPE_6__ {int status; } ;
struct TYPE_5__ {int hwirq; } ;
struct TYPE_4__ {scalar_t__ (* map ) (struct irq_host*,unsigned int,int ) ;} ;


 int IRQ_NOREQUEST ;
 TYPE_3__* get_irq_desc (unsigned int) ;
 int irq_free_virt (unsigned int,int) ;
 TYPE_2__* irq_map ;
 int pr_debug (char*) ;
 int smp_mb () ;
 int smp_wmb () ;
 scalar_t__ stub1 (struct irq_host*,unsigned int,int ) ;

__attribute__((used)) static int irq_setup_virq(struct irq_host *host, unsigned int virq,
       irq_hw_number_t hwirq)
{

 get_irq_desc(virq)->status &= ~IRQ_NOREQUEST;


 smp_wmb();
 irq_map[virq].hwirq = hwirq;
 smp_mb();

 if (host->ops->map(host, virq, hwirq)) {
  pr_debug("irq: -> mapping failed, freeing\n");
  irq_free_virt(virq, 1);
  return -1;
 }

 return 0;
}
