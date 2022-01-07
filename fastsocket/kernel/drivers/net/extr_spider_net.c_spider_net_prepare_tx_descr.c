
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct spider_net_hw_descr {int dmac_cmd_status; scalar_t__ data_status; scalar_t__ next_descr_addr; int buf_size; int buf_addr; } ;
struct spider_net_descr_chain {scalar_t__ head; int lock; TYPE_2__* tail; } ;
struct spider_net_descr {scalar_t__ next; int bus_addr; TYPE_4__* prev; struct sk_buff* skb; struct spider_net_hw_descr* hwdescr; } ;
struct TYPE_7__ {int tx_iommu_map_error; } ;
struct spider_net_card {TYPE_5__* netdev; int pdev; struct spider_net_descr_chain tx_chain; TYPE_1__ spider_stats; } ;
struct sk_buff {scalar_t__ ip_summed; int len; int data; } ;
typedef int dma_addr_t ;
struct TYPE_12__ {int protocol; } ;
struct TYPE_11__ {int trans_start; int dev; } ;
struct TYPE_10__ {TYPE_3__* hwdescr; } ;
struct TYPE_9__ {int next_descr_addr; } ;
struct TYPE_8__ {scalar_t__ prev; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ENOMEM ;


 int PCI_DMA_TODEVICE ;
 int SPIDER_NET_DESCR_CARDOWNED ;
 int SPIDER_NET_DMAC_TCP ;
 int SPIDER_NET_DMAC_TXFRMTL ;
 int SPIDER_NET_DMAC_UDP ;
 int dev_err (int *,char*,int ,int ) ;
 TYPE_6__* ip_hdr (struct sk_buff*) ;
 int jiffies ;
 scalar_t__ net_ratelimit () ;
 scalar_t__ netif_msg_tx_err (struct spider_net_card*) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

__attribute__((used)) static int
spider_net_prepare_tx_descr(struct spider_net_card *card,
       struct sk_buff *skb)
{
 struct spider_net_descr_chain *chain = &card->tx_chain;
 struct spider_net_descr *descr;
 struct spider_net_hw_descr *hwdescr;
 dma_addr_t buf;
 unsigned long flags;

 buf = pci_map_single(card->pdev, skb->data, skb->len, PCI_DMA_TODEVICE);
 if (pci_dma_mapping_error(card->pdev, buf)) {
  if (netif_msg_tx_err(card) && net_ratelimit())
   dev_err(&card->netdev->dev, "could not iommu-map packet (%p, %i). "
      "Dropping packet\n", skb->data, skb->len);
  card->spider_stats.tx_iommu_map_error++;
  return -ENOMEM;
 }

 spin_lock_irqsave(&chain->lock, flags);
 descr = card->tx_chain.head;
 if (descr->next == chain->tail->prev) {
  spin_unlock_irqrestore(&chain->lock, flags);
  pci_unmap_single(card->pdev, buf, skb->len, PCI_DMA_TODEVICE);
  return -ENOMEM;
 }
 hwdescr = descr->hwdescr;
 chain->head = descr->next;

 descr->skb = skb;
 hwdescr->buf_addr = buf;
 hwdescr->buf_size = skb->len;
 hwdescr->next_descr_addr = 0;
 hwdescr->data_status = 0;

 hwdescr->dmac_cmd_status =
   SPIDER_NET_DESCR_CARDOWNED | SPIDER_NET_DMAC_TXFRMTL;
 spin_unlock_irqrestore(&chain->lock, flags);

 if (skb->ip_summed == CHECKSUM_PARTIAL)
  switch (ip_hdr(skb)->protocol) {
  case 129:
   hwdescr->dmac_cmd_status |= SPIDER_NET_DMAC_TCP;
   break;
  case 128:
   hwdescr->dmac_cmd_status |= SPIDER_NET_DMAC_UDP;
   break;
  }


 wmb();
 descr->prev->hwdescr->next_descr_addr = descr->bus_addr;

 card->netdev->trans_start = jiffies;
 return 0;
}
