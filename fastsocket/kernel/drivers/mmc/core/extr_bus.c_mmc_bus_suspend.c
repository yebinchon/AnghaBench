
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_driver {int (* suspend ) (struct mmc_card*,int ) ;} ;
struct mmc_card {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef int pm_message_t ;


 struct mmc_card* dev_to_mmc_card (struct device*) ;
 int stub1 (struct mmc_card*,int ) ;
 struct mmc_driver* to_mmc_driver (scalar_t__) ;

__attribute__((used)) static int mmc_bus_suspend(struct device *dev, pm_message_t state)
{
 struct mmc_driver *drv = to_mmc_driver(dev->driver);
 struct mmc_card *card = dev_to_mmc_card(dev);
 int ret = 0;

 if (dev->driver && drv->suspend)
  ret = drv->suspend(card, state);
 return ret;
}
