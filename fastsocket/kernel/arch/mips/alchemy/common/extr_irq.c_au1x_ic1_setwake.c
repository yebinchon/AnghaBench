
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AU1000_GPIO_0 ;
 unsigned int AU1000_GPIO_7 ;
 unsigned int AU1000_INTC1_INT_BASE ;
 int EINVAL ;
 int SYS_WAKEMSK ;
 unsigned long au_readl (int ) ;
 int au_sync () ;
 int au_writel (unsigned long,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int au1x_ic1_setwake(unsigned int irq, unsigned int on)
{
 unsigned int bit = irq - AU1000_INTC1_INT_BASE;
 unsigned long wakemsk, flags;


 if ((irq < AU1000_GPIO_0) || (irq > AU1000_GPIO_7))
  return -EINVAL;

 local_irq_save(flags);
 wakemsk = au_readl(SYS_WAKEMSK);
 if (on)
  wakemsk |= 1 << bit;
 else
  wakemsk &= ~(1 << bit);
 au_writel(wakemsk, SYS_WAKEMSK);
 au_sync();
 local_irq_restore(flags);

 return 0;
}
