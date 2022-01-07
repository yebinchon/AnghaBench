
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICU_INT_CONF (unsigned int) ;
 int PRIORITY_NONE ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void icu_mask_irq(unsigned int irq)
{
 __raw_writel(PRIORITY_NONE, ICU_INT_CONF(irq));
}
