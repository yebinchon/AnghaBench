
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring_desc {int * map; } ;
struct ql_adapter {int pdev; int ndev; } ;


 int KERN_DEBUG ;
 int PCI_DMA_TODEVICE ;
 int mapaddr ;
 int maplen ;
 int netif_printk (struct ql_adapter*,int ,int ,int ,char*,...) ;
 int pci_unmap_addr (int *,int ) ;
 int pci_unmap_len (int *,int ) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int tx_done ;

__attribute__((used)) static void ql_unmap_send(struct ql_adapter *qdev,
     struct tx_ring_desc *tx_ring_desc, int mapped)
{
 int i;
 for (i = 0; i < mapped; i++) {
  if (i == 0 || (i == 7 && mapped > 7)) {
   if (i == 7) {
    netif_printk(qdev, tx_done, KERN_DEBUG,
          qdev->ndev,
          "unmapping OAL area.\n");
   }
   pci_unmap_single(qdev->pdev,
      pci_unmap_addr(&tx_ring_desc->map[i],
       mapaddr),
      pci_unmap_len(&tx_ring_desc->map[i],
             maplen),
      PCI_DMA_TODEVICE);
  } else {
   netif_printk(qdev, tx_done, KERN_DEBUG, qdev->ndev,
         "unmapping frag %d.\n", i);
   pci_unmap_page(qdev->pdev,
           pci_unmap_addr(&tx_ring_desc->map[i],
            mapaddr),
           pci_unmap_len(&tx_ring_desc->map[i],
           maplen), PCI_DMA_TODEVICE);
  }
 }

}
