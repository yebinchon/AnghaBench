
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t size; unsigned int* revmap; } ;
struct TYPE_8__ {int tree; TYPE_2__ linear; } ;
struct irq_host {int revmap_type; size_t inval_irq; TYPE_3__ revmap_data; TYPE_1__* ops; } ;
typedef size_t irq_hw_number_t ;
struct TYPE_10__ {int status; } ;
struct TYPE_9__ {size_t hwirq; struct irq_host* host; } ;
struct TYPE_6__ {int (* unmap ) (struct irq_host*,unsigned int) ;} ;


 int IRQ_HOST_MAP_LEGACY ;


 int IRQ_NOREQUEST ;
 unsigned int NO_IRQ ;
 int WARN_ON (int ) ;
 TYPE_5__* get_irq_desc (unsigned int) ;
 int irq_free_virt (unsigned int,int) ;
 TYPE_4__* irq_map ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_delete (int *,size_t) ;
 int revmap_trees_allocated ;
 int revmap_trees_mutex ;
 int set_irq_chip_and_handler (unsigned int,int *,int *) ;
 int smp_mb () ;
 int smp_rmb () ;
 int stub1 (struct irq_host*,unsigned int) ;
 int synchronize_irq (unsigned int) ;

void irq_dispose_mapping(unsigned int virq)
{
 struct irq_host *host;
 irq_hw_number_t hwirq;

 if (virq == NO_IRQ)
  return;

 host = irq_map[virq].host;
 WARN_ON (host == ((void*)0));
 if (host == ((void*)0))
  return;


 if (host->revmap_type == IRQ_HOST_MAP_LEGACY)
  return;


 set_irq_chip_and_handler(virq, ((void*)0), ((void*)0));


 synchronize_irq(virq);


 if (host->ops->unmap)
  host->ops->unmap(host, virq);
 smp_mb();


 hwirq = irq_map[virq].hwirq;
 switch(host->revmap_type) {
 case 129:
  if (hwirq < host->revmap_data.linear.size)
   host->revmap_data.linear.revmap[hwirq] = NO_IRQ;
  break;
 case 128:




  smp_rmb();
  if (revmap_trees_allocated < 1)
   break;
  mutex_lock(&revmap_trees_mutex);
  radix_tree_delete(&host->revmap_data.tree, hwirq);
  mutex_unlock(&revmap_trees_mutex);
  break;
 }


 smp_mb();
 irq_map[virq].hwirq = host->inval_irq;


 get_irq_desc(virq)->status |= IRQ_NOREQUEST;


 irq_free_virt(virq, 1);
}
