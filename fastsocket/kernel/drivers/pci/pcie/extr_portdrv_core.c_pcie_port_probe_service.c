
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port_service_driver {int (* probe ) (struct pcie_device*) ;int name; } ;
struct pcie_device {int dummy; } ;
struct device {int driver; } ;


 int ENODEV ;
 int KERN_DEBUG ;
 int dev_printk (int ,struct device*,char*,int ) ;
 int get_device (struct device*) ;
 int stub1 (struct pcie_device*) ;
 struct pcie_device* to_pcie_device (struct device*) ;
 struct pcie_port_service_driver* to_service_driver (int ) ;

__attribute__((used)) static int pcie_port_probe_service(struct device *dev)
{
 struct pcie_device *pciedev;
 struct pcie_port_service_driver *driver;
 int status;

 if (!dev || !dev->driver)
  return -ENODEV;

 driver = to_service_driver(dev->driver);
 if (!driver || !driver->probe)
  return -ENODEV;

 pciedev = to_pcie_device(dev);
 status = driver->probe(pciedev);
 if (!status) {
  dev_printk(KERN_DEBUG, dev, "service driver %s loaded\n",
   driver->name);
  get_device(dev);
 }
 return status;
}
