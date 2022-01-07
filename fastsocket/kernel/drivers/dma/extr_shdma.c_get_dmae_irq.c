
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 unsigned int* dmte_irq_map ;

__attribute__((used)) static unsigned int get_dmae_irq(unsigned int id)
{
 unsigned int irq = 0;
 if (id < ARRAY_SIZE(dmte_irq_map))
  irq = dmte_irq_map[id];
 return irq;
}
