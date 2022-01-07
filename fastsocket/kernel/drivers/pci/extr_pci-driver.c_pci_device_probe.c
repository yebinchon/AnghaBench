
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int dummy; } ;
struct pci_dev {int dummy; } ;
struct device {int driver; } ;


 int __pci_device_probe (struct pci_driver*,struct pci_dev*) ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 struct pci_driver* to_pci_driver (int ) ;

__attribute__((used)) static int pci_device_probe(struct device * dev)
{
 int error = 0;
 struct pci_driver *drv;
 struct pci_dev *pci_dev;

 drv = to_pci_driver(dev->driver);
 pci_dev = to_pci_dev(dev);
 pci_dev_get(pci_dev);
 error = __pci_device_probe(drv, pci_dev);
 if (error)
  pci_dev_put(pci_dev);

 return error;
}
