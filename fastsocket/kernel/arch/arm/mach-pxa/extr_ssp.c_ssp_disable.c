
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ssp_device {scalar_t__ mmio_base; } ;
struct ssp_dev {struct ssp_device* ssp; } ;


 scalar_t__ SSCR0 ;
 int SSCR0_SSE ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;

void ssp_disable(struct ssp_dev *dev)
{
 struct ssp_device *ssp = dev->ssp;
 uint32_t sscr0;

 sscr0 = __raw_readl(ssp->mmio_base + SSCR0);
 sscr0 &= ~SSCR0_SSE;
 __raw_writel(sscr0, ssp->mmio_base + SSCR0);
}
