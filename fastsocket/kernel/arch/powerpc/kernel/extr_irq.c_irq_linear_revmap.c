
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; unsigned int* revmap; } ;
struct TYPE_4__ {TYPE_1__ linear; } ;
struct irq_host {scalar_t__ revmap_type; TYPE_2__ revmap_data; } ;
typedef size_t irq_hw_number_t ;


 scalar_t__ IRQ_HOST_MAP_LINEAR ;
 unsigned int NO_IRQ ;
 int WARN_ON (int) ;
 unsigned int irq_find_mapping (struct irq_host*,size_t) ;
 scalar_t__ unlikely (int) ;

unsigned int irq_linear_revmap(struct irq_host *host,
          irq_hw_number_t hwirq)
{
 unsigned int *revmap;

 WARN_ON(host->revmap_type != IRQ_HOST_MAP_LINEAR);


 if (unlikely(hwirq >= host->revmap_data.linear.size))
  return irq_find_mapping(host, hwirq);


 revmap = host->revmap_data.linear.revmap;
 if (unlikely(revmap == ((void*)0)))
  return irq_find_mapping(host, hwirq);


 if (unlikely(revmap[hwirq] == NO_IRQ))
  revmap[hwirq] = irq_find_mapping(host, hwirq);

 return revmap[hwirq];
}
