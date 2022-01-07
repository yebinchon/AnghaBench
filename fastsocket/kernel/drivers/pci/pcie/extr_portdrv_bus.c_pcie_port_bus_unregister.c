
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int pcie_port_bus_type ;

void pcie_port_bus_unregister(void)
{
 bus_unregister(&pcie_port_bus_type);
}
