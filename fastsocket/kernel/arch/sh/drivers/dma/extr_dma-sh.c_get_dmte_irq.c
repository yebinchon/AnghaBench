
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 unsigned int DMTE0_IRQ ;
 unsigned int DMTE6_IRQ ;
 unsigned int* dmte_irq_map ;

__attribute__((used)) static inline unsigned int get_dmte_irq(unsigned int chan)
{
 unsigned int irq = 0;
 if (chan < ARRAY_SIZE(dmte_irq_map))
  irq = dmte_irq_map[chan];






 return irq;

}
