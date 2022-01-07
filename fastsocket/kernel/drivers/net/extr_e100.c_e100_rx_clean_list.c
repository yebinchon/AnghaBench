
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx {scalar_t__ skb; int dma_addr; } ;
struct TYPE_3__ {unsigned int count; } ;
struct TYPE_4__ {TYPE_1__ rfds; } ;
struct nic {int * rx_to_clean; int rx_to_use; struct rx* rxs; int pdev; int ru_running; TYPE_2__ params; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int RFD_BUF_LEN ;
 int RU_UNINITIALIZED ;
 int dev_kfree_skb (scalar_t__) ;
 int kfree (struct rx*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void e100_rx_clean_list(struct nic *nic)
{
 struct rx *rx;
 unsigned int i, count = nic->params.rfds.count;

 nic->ru_running = RU_UNINITIALIZED;

 if (nic->rxs) {
  for (rx = nic->rxs, i = 0; i < count; rx++, i++) {
   if (rx->skb) {
    pci_unmap_single(nic->pdev, rx->dma_addr,
     RFD_BUF_LEN, PCI_DMA_BIDIRECTIONAL);
    dev_kfree_skb(rx->skb);
   }
  }
  kfree(nic->rxs);
  nic->rxs = ((void*)0);
 }

 nic->rx_to_use = nic->rx_to_clean = ((void*)0);
}
