
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * bus; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ SZ_64M ;
 int pci_bus_type ;

int dma_needs_bounce(struct device *dev, dma_addr_t dma_addr, size_t size)
{
 return (dev->bus == &pci_bus_type ) && ((dma_addr + size) >= SZ_64M);
}
