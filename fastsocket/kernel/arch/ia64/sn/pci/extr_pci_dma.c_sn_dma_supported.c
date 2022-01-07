
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int * bus; } ;


 int BUG_ON (int) ;
 int pci_bus_type ;

__attribute__((used)) static int sn_dma_supported(struct device *dev, u64 mask)
{
 BUG_ON(dev->bus != &pci_bus_type);

 if (mask < 0x7fffffff)
  return 0;
 return 1;
}
