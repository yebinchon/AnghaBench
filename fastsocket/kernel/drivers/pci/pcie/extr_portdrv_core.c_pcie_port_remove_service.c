
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port_service_driver {int (* remove ) (struct pcie_device*) ;int name; } ;
struct pcie_device {int dummy; } ;
struct device {int driver; } ;


 int KERN_DEBUG ;
 int dev_printk (int ,struct device*,char*,int ) ;
 int put_device (struct device*) ;
 int stub1 (struct pcie_device*) ;
 struct pcie_device* to_pcie_device (struct device*) ;
 struct pcie_port_service_driver* to_service_driver (int ) ;

__attribute__((used)) static int pcie_port_remove_service(struct device *dev)
{
 struct pcie_device *pciedev;
 struct pcie_port_service_driver *driver;

 if (!dev || !dev->driver)
  return 0;

 pciedev = to_pcie_device(dev);
 driver = to_service_driver(dev->driver);
 if (driver && driver->remove) {
  dev_printk(KERN_DEBUG, dev, "unloading service driver %s\n",
   driver->name);
  driver->remove(pciedev);
  put_device(dev);
 }
 return 0;
}
