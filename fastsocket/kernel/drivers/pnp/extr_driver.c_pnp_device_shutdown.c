
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_driver {int (* shutdown ) (struct pnp_dev*) ;} ;
struct pnp_dev {struct pnp_driver* driver; } ;
struct device {int dummy; } ;


 int stub1 (struct pnp_dev*) ;
 struct pnp_dev* to_pnp_dev (struct device*) ;

__attribute__((used)) static void pnp_device_shutdown(struct device *dev)
{
 struct pnp_dev *pnp_dev = to_pnp_dev(dev);
 struct pnp_driver *drv = pnp_dev->driver;

 if (drv && drv->shutdown)
  drv->shutdown(pnp_dev);
}
