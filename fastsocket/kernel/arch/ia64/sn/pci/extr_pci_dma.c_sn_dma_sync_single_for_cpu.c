
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * bus; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int pci_bus_type ;

__attribute__((used)) static void sn_dma_sync_single_for_cpu(struct device *dev, dma_addr_t dma_handle,
           size_t size, enum dma_data_direction dir)
{
 BUG_ON(dev->bus != &pci_bus_type);
}
