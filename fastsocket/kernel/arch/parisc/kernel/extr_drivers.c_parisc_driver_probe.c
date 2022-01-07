
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_driver {int (* probe ) (struct parisc_device*) ;} ;
struct parisc_device {struct parisc_driver* driver; } ;
struct device {int driver; } ;


 int stub1 (struct parisc_device*) ;
 struct parisc_device* to_parisc_device (struct device*) ;
 struct parisc_driver* to_parisc_driver (int ) ;

__attribute__((used)) static int parisc_driver_probe(struct device *dev)
{
 int rc;
 struct parisc_device *pa_dev = to_parisc_device(dev);
 struct parisc_driver *pa_drv = to_parisc_driver(dev->driver);

 rc = pa_drv->probe(pa_dev);

 if (!rc)
  pa_dev->driver = pa_drv;

 return rc;
}
