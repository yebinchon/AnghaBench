
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KS8695_INTEN ;
 scalar_t__ KS8695_IRQ_VA ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void ks8695_irq_unmask(unsigned int irqno)
{
 unsigned long inten;

 inten = __raw_readl(KS8695_IRQ_VA + KS8695_INTEN);
 inten |= (1 << irqno);

 __raw_writel(inten, KS8695_IRQ_VA + KS8695_INTEN);
}
