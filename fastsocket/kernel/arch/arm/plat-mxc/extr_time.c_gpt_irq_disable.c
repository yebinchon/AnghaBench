
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MX1_2_TCTL_IRQEN ;
 scalar_t__ MX3_IR ;
 scalar_t__ MXC_TCTL ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 scalar_t__ cpu_is_mx25 () ;
 scalar_t__ cpu_is_mx3 () ;
 scalar_t__ timer_base ;

__attribute__((used)) static inline void gpt_irq_disable(void)
{
 unsigned int tmp;

 if (cpu_is_mx3() || cpu_is_mx25())
  __raw_writel(0, timer_base + MX3_IR);
 else {
  tmp = __raw_readl(timer_base + MXC_TCTL);
  __raw_writel(tmp & ~MX1_2_TCTL_IRQEN, timer_base + MXC_TCTL);
 }
}
