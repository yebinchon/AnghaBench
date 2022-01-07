
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_writel (unsigned long,scalar_t__) ;
 scalar_t__ davinci_intc_base ;

__attribute__((used)) static inline void davinci_irq_writel(unsigned long value, int offset)
{
 __raw_writel(value, davinci_intc_base + offset);
}
