
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_host {scalar_t__ revmap_type; } ;
typedef unsigned int irq_hw_number_t ;
struct TYPE_2__ {unsigned int hwirq; struct irq_host* host; } ;


 scalar_t__ IRQ_HOST_MAP_LEGACY ;
 unsigned int NO_IRQ ;
 unsigned int NUM_ISA_INTERRUPTS ;
 struct irq_host* irq_default_host ;
 TYPE_1__* irq_map ;
 unsigned int irq_virq_count ;

unsigned int irq_find_mapping(struct irq_host *host,
         irq_hw_number_t hwirq)
{
 unsigned int i;
 unsigned int hint = hwirq % irq_virq_count;


 if (host == ((void*)0))
  host = irq_default_host;
 if (host == ((void*)0))
  return NO_IRQ;


 if (host->revmap_type == IRQ_HOST_MAP_LEGACY)
  return hwirq;


 if (hint < NUM_ISA_INTERRUPTS)
  hint = NUM_ISA_INTERRUPTS;
 i = hint;
 do {
  if (irq_map[i].host == host &&
      irq_map[i].hwirq == hwirq)
   return i;
  i++;
  if (i >= irq_virq_count)
   i = NUM_ISA_INTERRUPTS;
 } while(i != hint);
 return NO_IRQ;
}
