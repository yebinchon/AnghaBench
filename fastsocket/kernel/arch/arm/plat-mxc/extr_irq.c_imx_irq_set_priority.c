
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AVIC_NIPRIORITY (unsigned char) ;
 int EINVAL ;
 int ENOSYS ;
 unsigned char MXC_INTERNAL_IRQS ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 scalar_t__ avic_base ;

int imx_irq_set_priority(unsigned char irq, unsigned char prio)
{
 return -ENOSYS;

}
