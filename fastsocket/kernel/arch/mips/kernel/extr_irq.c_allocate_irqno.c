
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int NR_IRQS ;
 int find_first_zero_bit (int ,int) ;
 int irq_map ;
 scalar_t__ test_and_set_bit (int,int ) ;

int allocate_irqno(void)
{
 int irq;

again:
 irq = find_first_zero_bit(irq_map, NR_IRQS);

 if (irq >= NR_IRQS)
  return -ENOSPC;

 if (test_and_set_bit(irq, irq_map))
  goto again;

 return irq;
}
