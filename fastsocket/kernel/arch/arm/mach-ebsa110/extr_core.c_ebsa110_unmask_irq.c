
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_MSET ;
 int __raw_writeb (int,int ) ;

__attribute__((used)) static void ebsa110_unmask_irq(unsigned int irq)
{
 __raw_writeb(1 << irq, IRQ_MSET);
}
