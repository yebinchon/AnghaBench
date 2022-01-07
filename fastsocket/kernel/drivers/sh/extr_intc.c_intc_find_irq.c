
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_handle_int {unsigned int irq; } ;



__attribute__((used)) static struct intc_handle_int *intc_find_irq(struct intc_handle_int *hp,
          unsigned int nr_hp,
          unsigned int irq)
{
 int i;
 for (i = 0; i < nr_hp; i++) {
  if ((hp + i)->irq != irq)
   continue;

  return hp + i;
 }

 return ((void*)0);
}
