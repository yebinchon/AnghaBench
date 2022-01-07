
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_driver {int (* remove ) (struct parisc_device*) ;} ;
struct parisc_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct parisc_device*) ;
 struct parisc_device* to_parisc_device (struct device*) ;
 struct parisc_driver* to_parisc_driver (int ) ;

__attribute__((used)) static int parisc_driver_remove(struct device *dev)
{
 struct parisc_device *pa_dev = to_parisc_device(dev);
 struct parisc_driver *pa_drv = to_parisc_driver(dev->driver);
 if (pa_drv->remove)
  pa_drv->remove(pa_dev);

 return 0;
}
