
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int * bus; } ;


 int EOPNOTSUPP ;
 int pci_bus_type ;
 int pci_set_dma_mask (int ,int ) ;
 int to_pci_dev (struct device*) ;

int dma_set_mask(struct device *dev, u64 dma_mask)
{




 return -EOPNOTSUPP;
}
