
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tree; } ;
struct irq_host {scalar_t__ revmap_type; TYPE_1__ revmap_data; } ;
typedef int irq_hw_number_t ;


 scalar_t__ IRQ_HOST_MAP_TREE ;
 unsigned int NO_IRQ ;
 int WARN_ON (int) ;
 int * irq_map ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_insert (int *,int ,int *) ;
 int revmap_trees_allocated ;
 int revmap_trees_mutex ;
 int smp_rmb () ;

void irq_radix_revmap_insert(struct irq_host *host, unsigned int virq,
        irq_hw_number_t hwirq)
{

 WARN_ON(host->revmap_type != IRQ_HOST_MAP_TREE);






 smp_rmb();
 if (revmap_trees_allocated < 1)
  return;

 if (virq != NO_IRQ) {
  mutex_lock(&revmap_trees_mutex);
  radix_tree_insert(&host->revmap_data.tree, hwirq,
      &irq_map[virq]);
  mutex_unlock(&revmap_trees_mutex);
 }
}
