
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KS8695_INTST ;
 scalar_t__ KS8695_IRQ_VA ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static void ks8695_irq_ack(unsigned int irqno)
{
 __raw_writel((1 << irqno), KS8695_IRQ_VA + KS8695_INTST);
}
