
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int pcie_port_bus_type ;

int pcie_port_bus_register(void)
{
 return bus_register(&pcie_port_bus_type);
}
