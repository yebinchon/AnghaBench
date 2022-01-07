
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct e1000_ring {int desc; int dma; int size; } ;
struct e1000_adapter {struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static int e1000_alloc_ring_dma(struct e1000_adapter *adapter,
    struct e1000_ring *ring)
{
 struct pci_dev *pdev = adapter->pdev;

 ring->desc = dma_alloc_coherent(&pdev->dev, ring->size, &ring->dma,
     GFP_KERNEL);
 if (!ring->desc)
  return -ENOMEM;

 return 0;
}
