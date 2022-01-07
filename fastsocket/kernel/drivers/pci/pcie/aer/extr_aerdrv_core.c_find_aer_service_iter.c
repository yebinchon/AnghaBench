
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port_service_driver {scalar_t__ service; } ;
struct device {scalar_t__ driver; int * bus; } ;


 scalar_t__ PCIE_PORT_SERVICE_AER ;
 int pcie_port_bus_type ;
 struct pcie_port_service_driver* to_service_driver (scalar_t__) ;

__attribute__((used)) static int find_aer_service_iter(struct device *device, void *data)
{
 struct pcie_port_service_driver *service_driver, **drv;

 drv = (struct pcie_port_service_driver **) data;

 if (device->bus == &pcie_port_bus_type && device->driver) {
  service_driver = to_service_driver(device->driver);
  if (service_driver->service == PCIE_PORT_SERVICE_AER) {
   *drv = service_driver;
   return 1;
  }
 }

 return 0;
}
