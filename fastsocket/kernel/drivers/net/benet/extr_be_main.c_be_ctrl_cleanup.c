
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_dma_mem {int dma; scalar_t__ va; int size; } ;
struct be_adapter {TYPE_1__* pdev; struct be_dma_mem rx_filter; struct be_dma_mem mbox_mem_alloced; } ;
struct TYPE_2__ {int dev; } ;


 int be_unmap_pci_bars (struct be_adapter*) ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static void be_ctrl_cleanup(struct be_adapter *adapter)
{
 struct be_dma_mem *mem = &adapter->mbox_mem_alloced;

 be_unmap_pci_bars(adapter);

 if (mem->va)
  dma_free_coherent(&adapter->pdev->dev, mem->size, mem->va,
      mem->dma);

 mem = &adapter->rx_filter;
 if (mem->va)
  dma_free_coherent(&adapter->pdev->dev, mem->size, mem->va,
      mem->dma);
}
