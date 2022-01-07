
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring_info {int flags; } ;
struct pci_dev {int dummy; } ;


 int PCI_DMA_TODEVICE ;
 int TX_MAP_PAGE ;
 int TX_MAP_SINGLE ;
 int mapaddr ;
 int maplen ;
 int pci_unmap_addr (struct tx_ring_info*,int ) ;
 int pci_unmap_len (struct tx_ring_info*,int ) ;
 int pci_unmap_page (struct pci_dev*,int ,int ,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void sky2_tx_unmap(struct pci_dev *pdev, struct tx_ring_info *re)
{
 if (re->flags & TX_MAP_SINGLE)
  pci_unmap_single(pdev, pci_unmap_addr(re, mapaddr),
     pci_unmap_len(re, maplen),
     PCI_DMA_TODEVICE);
 else if (re->flags & TX_MAP_PAGE)
  pci_unmap_page(pdev, pci_unmap_addr(re, mapaddr),
          pci_unmap_len(re, maplen),
          PCI_DMA_TODEVICE);
 re->flags = 0;
}
