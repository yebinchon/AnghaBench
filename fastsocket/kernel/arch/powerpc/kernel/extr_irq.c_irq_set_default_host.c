
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;


 struct irq_host* irq_default_host ;
 int pr_debug (char*,struct irq_host*) ;

void irq_set_default_host(struct irq_host *host)
{
 pr_debug("irq: Default host set to @0x%p\n", host);

 irq_default_host = host;
}
