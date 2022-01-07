
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {void* coherent_dma_mask; void** dma_mask; int * bus; } ;


 void* SZ_64M ;
 int dmabounce_register_dev (struct device*,int,int) ;
 int pci_bus_type ;

__attribute__((used)) static int ixp4xx_pci_platform_notify(struct device *dev)
{
 if(dev->bus == &pci_bus_type) {
  *dev->dma_mask = SZ_64M - 1;
  dev->coherent_dma_mask = SZ_64M - 1;
  dmabounce_register_dev(dev, 2048, 4096);
 }
 return 0;
}
