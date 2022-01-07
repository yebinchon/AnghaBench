
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int S3C64XX_EINT0MASK ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int eint_irq_to_bit (unsigned int) ;

__attribute__((used)) static inline void s3c_irq_eint_mask(unsigned int irq)
{
 u32 mask;

 mask = __raw_readl(S3C64XX_EINT0MASK);
 mask |= eint_irq_to_bit(irq);
 __raw_writel(mask, S3C64XX_EINT0MASK);
}
