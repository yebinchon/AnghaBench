
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_driver {int (* remove ) (struct pnp_dev*) ;} ;
struct pnp_dev {struct pnp_driver* driver; } ;
struct device {int dummy; } ;


 int pnp_device_detach (struct pnp_dev*) ;
 int stub1 (struct pnp_dev*) ;
 struct pnp_dev* to_pnp_dev (struct device*) ;

__attribute__((used)) static int pnp_device_remove(struct device *dev)
{
 struct pnp_dev *pnp_dev = to_pnp_dev(dev);
 struct pnp_driver *drv = pnp_dev->driver;

 if (drv) {
  if (drv->remove)
   drv->remove(pnp_dev);
  pnp_dev->driver = ((void*)0);
 }
 pnp_device_detach(pnp_dev);
 return 0;
}
