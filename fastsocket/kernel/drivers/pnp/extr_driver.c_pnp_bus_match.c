
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_driver {int dummy; } ;
struct pnp_dev {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int * match_device (struct pnp_driver*,struct pnp_dev*) ;
 struct pnp_dev* to_pnp_dev (struct device*) ;
 struct pnp_driver* to_pnp_driver (struct device_driver*) ;

__attribute__((used)) static int pnp_bus_match(struct device *dev, struct device_driver *drv)
{
 struct pnp_dev *pnp_dev = to_pnp_dev(dev);
 struct pnp_driver *pnp_drv = to_pnp_driver(drv);

 if (match_device(pnp_drv, pnp_dev) == ((void*)0))
  return 0;
 return 1;
}
