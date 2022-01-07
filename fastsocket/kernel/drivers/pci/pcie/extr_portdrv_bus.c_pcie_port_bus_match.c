
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port_service_driver {scalar_t__ service; scalar_t__ port_type; } ;
struct pcie_device {scalar_t__ service; int port; } ;
struct device_driver {int * bus; } ;
struct device {int * bus; } ;


 scalar_t__ PCIE_ANY_PORT ;
 scalar_t__ pci_pcie_type (int ) ;
 int pcie_port_bus_type ;
 struct pcie_device* to_pcie_device (struct device*) ;
 struct pcie_port_service_driver* to_service_driver (struct device_driver*) ;

__attribute__((used)) static int pcie_port_bus_match(struct device *dev, struct device_driver *drv)
{
 struct pcie_device *pciedev;
 struct pcie_port_service_driver *driver;

 if (drv->bus != &pcie_port_bus_type || dev->bus != &pcie_port_bus_type)
  return 0;

 pciedev = to_pcie_device(dev);
 driver = to_service_driver(drv);

 if (driver->service != pciedev->service)
  return 0;

 if ((driver->port_type != PCIE_ANY_PORT) &&
     (driver->port_type != pci_pcie_type(pciedev->port)))
  return 0;

 return 1;
}
