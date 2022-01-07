
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_3__ {int dev; } ;
typedef TYPE_1__ adapter_t ;


 int DMA_BIT_MASK (int) ;
 struct pci_dev* alloc_pci_dev () ;
 int kfree_pci_dev (struct pci_dev*) ;
 int memcpy (struct pci_dev*,int ,int) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static inline int
make_local_pdev(adapter_t *adapter, struct pci_dev **pdev)
{
 *pdev = alloc_pci_dev();

 if( *pdev == ((void*)0) ) return -1;

 memcpy(*pdev, adapter->dev, sizeof(struct pci_dev));

 if( pci_set_dma_mask(*pdev, DMA_BIT_MASK(32)) != 0 ) {
  kfree_pci_dev(*pdev);
  return -1;
 }

 return 0;
}
