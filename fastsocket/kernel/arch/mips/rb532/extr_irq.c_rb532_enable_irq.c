
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* base_addr; } ;


 unsigned int GROUP0_IRQ_BASE ;
 unsigned int READ_MASK (unsigned int volatile*) ;
 int WRITE_MASK (unsigned int volatile*,unsigned int) ;
 int enable_local_irq (unsigned int) ;
 unsigned int group_to_ip (unsigned int) ;
 TYPE_1__* intr_group ;

__attribute__((used)) static void rb532_enable_irq(unsigned int irq_nr)
{
 int ip = irq_nr - GROUP0_IRQ_BASE;
 unsigned int group, intr_bit;
 volatile unsigned int *addr;

 if (ip < 0)
  enable_local_irq(irq_nr);
 else {
  group = ip >> 5;

  ip &= (1 << 5) - 1;
  intr_bit = 1 << ip;

  enable_local_irq(group_to_ip(group));

  addr = intr_group[group].base_addr;
  WRITE_MASK(addr, READ_MASK(addr) & ~intr_bit);
 }
}
