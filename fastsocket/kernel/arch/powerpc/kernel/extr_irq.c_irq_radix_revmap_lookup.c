
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_map_entry {int dummy; } ;
struct TYPE_2__ {int tree; } ;
struct irq_host {scalar_t__ revmap_type; TYPE_1__ revmap_data; } ;
typedef int irq_hw_number_t ;


 scalar_t__ IRQ_HOST_MAP_TREE ;
 int WARN_ON (int) ;
 unsigned int irq_find_mapping (struct irq_host*,int ) ;
 struct irq_map_entry* irq_map ;
 struct irq_map_entry* radix_tree_lookup (int *,int ) ;
 int revmap_trees_allocated ;

unsigned int irq_radix_revmap_lookup(struct irq_host *host,
         irq_hw_number_t hwirq)
{
 struct irq_map_entry *ptr;
 unsigned int virq;

 WARN_ON(host->revmap_type != IRQ_HOST_MAP_TREE);





 if (revmap_trees_allocated < 2)
  return irq_find_mapping(host, hwirq);






 ptr = radix_tree_lookup(&host->revmap_data.tree, hwirq);






 if (ptr)
  virq = ptr - irq_map;
 else
  virq = irq_find_mapping(host, hwirq);

 return virq;
}
