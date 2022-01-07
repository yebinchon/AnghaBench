
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_device {int clk; } ;
struct ssp_dev {scalar_t__ irq; struct ssp_device* ssp; } ;


 scalar_t__ NO_IRQ ;
 int clk_disable (int ) ;
 int free_irq (scalar_t__,struct ssp_dev*) ;
 int ssp_disable (struct ssp_dev*) ;
 int ssp_free (struct ssp_device*) ;

void ssp_exit(struct ssp_dev *dev)
{
 struct ssp_device *ssp = dev->ssp;

 ssp_disable(dev);
 if (dev->irq != NO_IRQ)
  free_irq(dev->irq, dev);
 clk_disable(ssp->clk);
 ssp_free(ssp);
}
