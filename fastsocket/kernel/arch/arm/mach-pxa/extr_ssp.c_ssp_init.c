
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssp_device {int clk; int irq; } ;
struct ssp_dev {int port; int irq; struct ssp_device* ssp; } ;


 int ENODEV ;
 int NO_IRQ ;
 int SSP_NO_IRQ ;
 int clk_enable (int ) ;
 int request_irq (int ,int ,int ,char*,struct ssp_dev*) ;
 int ssp_free (struct ssp_device*) ;
 int ssp_interrupt ;
 struct ssp_device* ssp_request (int,char*) ;

int ssp_init(struct ssp_dev *dev, u32 port, u32 init_flags)
{
 struct ssp_device *ssp;
 int ret;

 ssp = ssp_request(port, "SSP");
 if (ssp == ((void*)0))
  return -ENODEV;

 dev->ssp = ssp;
 dev->port = port;


 if (!(init_flags & SSP_NO_IRQ)) {
  ret = request_irq(ssp->irq, ssp_interrupt,
    0, "SSP", dev);
      if (ret)
   goto out_region;
  dev->irq = ssp->irq;
 } else
  dev->irq = NO_IRQ;


 clk_enable(ssp->clk);
 return 0;

out_region:
 ssp_free(ssp);
 return ret;
}
