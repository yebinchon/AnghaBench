
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {int dummy; } ;


 struct dma_map_ops* pci_dma_ops ;

struct dma_map_ops *get_pci_dma_ops(void)
{
 return pci_dma_ops;
}
