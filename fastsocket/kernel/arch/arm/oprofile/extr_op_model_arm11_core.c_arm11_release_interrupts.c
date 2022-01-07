
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_irq (int,int *) ;

void arm11_release_interrupts(int *irqs, int nr)
{
 unsigned int i;

 for (i = 0; i < nr; i++)
  free_irq(irqs[i], ((void*)0));
}
