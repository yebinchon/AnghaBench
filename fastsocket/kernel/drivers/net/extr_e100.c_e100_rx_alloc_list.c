
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rx {int dma_addr; TYPE_3__* skb; struct rx* prev; struct rx* next; } ;
struct rfd {scalar_t__ size; int command; } ;
struct TYPE_4__ {unsigned int count; } ;
struct TYPE_5__ {TYPE_1__ rfds; } ;
struct nic {int ru_running; struct rx* rxs; struct rx* rx_to_clean; struct rx* rx_to_use; int pdev; TYPE_2__ params; } ;
struct TYPE_6__ {scalar_t__ data; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PCI_DMA_BIDIRECTIONAL ;
 int RU_SUSPENDED ;
 int RU_UNINITIALIZED ;
 int cb_el ;
 int cpu_to_le16 (int ) ;
 scalar_t__ e100_rx_alloc_skb (struct nic*,struct rx*) ;
 int e100_rx_clean_list (struct nic*) ;
 struct rx* kcalloc (unsigned int,int,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,int,int ) ;

__attribute__((used)) static int e100_rx_alloc_list(struct nic *nic)
{
 struct rx *rx;
 unsigned int i, count = nic->params.rfds.count;
 struct rfd *before_last;

 nic->rx_to_use = nic->rx_to_clean = ((void*)0);
 nic->ru_running = RU_UNINITIALIZED;

 if (!(nic->rxs = kcalloc(count, sizeof(struct rx), GFP_ATOMIC)))
  return -ENOMEM;

 for (rx = nic->rxs, i = 0; i < count; rx++, i++) {
  rx->next = (i + 1 < count) ? rx + 1 : nic->rxs;
  rx->prev = (i == 0) ? nic->rxs + count - 1 : rx - 1;
  if (e100_rx_alloc_skb(nic, rx)) {
   e100_rx_clean_list(nic);
   return -ENOMEM;
  }
 }







 rx = nic->rxs->prev->prev;
 before_last = (struct rfd *)rx->skb->data;
 before_last->command |= cpu_to_le16(cb_el);
 before_last->size = 0;
 pci_dma_sync_single_for_device(nic->pdev, rx->dma_addr,
  sizeof(struct rfd), PCI_DMA_BIDIRECTIONAL);

 nic->rx_to_use = nic->rx_to_clean = nic->rxs;
 nic->ru_running = RU_SUSPENDED;

 return 0;
}
