
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_state {void* psp; void* to; void* cr1; void* cr0; } ;
struct ssp_device {scalar_t__ mmio_base; } ;
struct ssp_dev {struct ssp_device* ssp; } ;


 scalar_t__ SSCR0 ;
 scalar_t__ SSCR1 ;
 scalar_t__ SSPSP ;
 scalar_t__ SSTO ;
 void* __raw_readl (scalar_t__) ;
 int ssp_disable (struct ssp_dev*) ;

void ssp_save_state(struct ssp_dev *dev, struct ssp_state *state)
{
 struct ssp_device *ssp = dev->ssp;

 state->cr0 = __raw_readl(ssp->mmio_base + SSCR0);
 state->cr1 = __raw_readl(ssp->mmio_base + SSCR1);
 state->to = __raw_readl(ssp->mmio_base + SSTO);
 state->psp = __raw_readl(ssp->mmio_base + SSPSP);

 ssp_disable(dev);
}
