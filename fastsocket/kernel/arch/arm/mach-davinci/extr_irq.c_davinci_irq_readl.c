
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __raw_readl (scalar_t__) ;
 scalar_t__ davinci_intc_base ;

__attribute__((used)) static inline unsigned int davinci_irq_readl(int offset)
{
 return __raw_readl(davinci_intc_base + offset);
}
