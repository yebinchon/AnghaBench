
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {scalar_t__ revmap_type; } ;


 int BUG_ON (int ) ;
 scalar_t__ IRQ_HOST_MAP_NOMAP ;
 unsigned int NO_IRQ ;
 int WARN_ON (int) ;
 unsigned int irq_alloc_virt (struct irq_host*,int,int ) ;
 struct irq_host* irq_default_host ;
 scalar_t__ irq_setup_virq (struct irq_host*,unsigned int,unsigned int) ;
 int pr_debug (char*,...) ;

unsigned int irq_create_direct_mapping(struct irq_host *host)
{
 unsigned int virq;

 if (host == ((void*)0))
  host = irq_default_host;

 BUG_ON(host == ((void*)0));
 WARN_ON(host->revmap_type != IRQ_HOST_MAP_NOMAP);

 virq = irq_alloc_virt(host, 1, 0);
 if (virq == NO_IRQ) {
  pr_debug("irq: create_direct virq allocation failed\n");
  return NO_IRQ;
 }

 pr_debug("irq: create_direct obtained virq %d\n", virq);

 if (irq_setup_virq(host, virq, virq))
  return NO_IRQ;

 return virq;
}
