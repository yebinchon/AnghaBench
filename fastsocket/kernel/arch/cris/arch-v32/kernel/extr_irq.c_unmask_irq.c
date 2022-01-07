
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_cpu (int) ;
 int unblock_irq (int,int ) ;

void
unmask_irq(int irq)
{
 unblock_irq(irq, irq_cpu(irq));
}
