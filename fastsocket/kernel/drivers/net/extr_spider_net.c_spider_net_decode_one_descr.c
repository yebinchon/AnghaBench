
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct spider_net_hw_descr {int buf_addr; int data_error; int data_status; int dmac_cmd_status; int buf_size; int next_descr_addr; int result_size; int valid_size; } ;
struct spider_net_descr_chain {struct spider_net_descr* ring; struct spider_net_descr* tail; } ;
struct spider_net_descr {int * skb; struct spider_net_descr* next; struct spider_net_hw_descr* hwdescr; } ;
struct TYPE_4__ {int rx_desc_error; int rx_desc_unk_state; } ;
struct spider_net_card {TYPE_2__ spider_stats; struct spider_net_descr_chain rx_chain; struct net_device* netdev; int pdev; } ;
struct TYPE_3__ {int rx_dropped; } ;
struct net_device {int dev; TYPE_1__ stats; } ;


 int PCI_DMA_FROMDEVICE ;
 int SPIDER_NET_DESCR_BAD_STATUS ;
 int SPIDER_NET_DESCR_CARDOWNED ;
 int SPIDER_NET_DESCR_COMPLETE ;
 int SPIDER_NET_DESCR_FORCE_END ;
 int SPIDER_NET_DESCR_FRAME_END ;
 int SPIDER_NET_DESCR_NOT_IN_USE ;
 int SPIDER_NET_DESCR_PROTECTION_ERROR ;
 int SPIDER_NET_DESCR_RESPONSE_ERROR ;
 int SPIDER_NET_DESTROY_RX_FLAGS ;
 int SPIDER_NET_MAX_FRAME ;
 int dev_err (int *,char*,int,...) ;
 int dev_kfree_skb_irq (int *) ;
 scalar_t__ netif_msg_rx_err (struct spider_net_card*) ;
 int pci_unmap_single (int ,int,int ,int ) ;
 int pr_err (char*,int) ;
 int show_rx_chain (struct spider_net_card*) ;
 int spider_net_get_descr_status (struct spider_net_hw_descr*) ;
 int spider_net_pass_skb_up (struct spider_net_descr*,struct spider_net_card*) ;

__attribute__((used)) static int
spider_net_decode_one_descr(struct spider_net_card *card)
{
 struct net_device *dev = card->netdev;
 struct spider_net_descr_chain *chain = &card->rx_chain;
 struct spider_net_descr *descr = chain->tail;
 struct spider_net_hw_descr *hwdescr = descr->hwdescr;
 u32 hw_buf_addr;
 int status;

 status = spider_net_get_descr_status(hwdescr);


 if ((status == SPIDER_NET_DESCR_CARDOWNED) ||
     (status == SPIDER_NET_DESCR_NOT_IN_USE))
  return 0;


 chain->tail = descr->next;


 hw_buf_addr = hwdescr->buf_addr;
 hwdescr->buf_addr = 0xffffffff;
 pci_unmap_single(card->pdev, hw_buf_addr,
   SPIDER_NET_MAX_FRAME, PCI_DMA_FROMDEVICE);

 if ( (status == SPIDER_NET_DESCR_RESPONSE_ERROR) ||
      (status == SPIDER_NET_DESCR_PROTECTION_ERROR) ||
      (status == SPIDER_NET_DESCR_FORCE_END) ) {
  if (netif_msg_rx_err(card))
   dev_err(&dev->dev,
          "dropping RX descriptor with state %d\n", status);
  dev->stats.rx_dropped++;
  goto bad_desc;
 }

 if ( (status != SPIDER_NET_DESCR_COMPLETE) &&
      (status != SPIDER_NET_DESCR_FRAME_END) ) {
  if (netif_msg_rx_err(card))
   dev_err(&card->netdev->dev,
          "RX descriptor with unknown state %d\n", status);
  card->spider_stats.rx_desc_unk_state++;
  goto bad_desc;
 }


 if (hwdescr->data_error & SPIDER_NET_DESTROY_RX_FLAGS) {
  if (netif_msg_rx_err(card))
   dev_err(&card->netdev->dev,
          "error in received descriptor found, "
          "data_status=x%08x, data_error=x%08x\n",
          hwdescr->data_status, hwdescr->data_error);
  goto bad_desc;
 }

 if (hwdescr->dmac_cmd_status & SPIDER_NET_DESCR_BAD_STATUS) {
  dev_err(&card->netdev->dev, "bad status, cmd_status=x%08x\n",
          hwdescr->dmac_cmd_status);
  pr_err("buf_addr=x%08x\n", hw_buf_addr);
  pr_err("buf_size=x%08x\n", hwdescr->buf_size);
  pr_err("next_descr_addr=x%08x\n", hwdescr->next_descr_addr);
  pr_err("result_size=x%08x\n", hwdescr->result_size);
  pr_err("valid_size=x%08x\n", hwdescr->valid_size);
  pr_err("data_status=x%08x\n", hwdescr->data_status);
  pr_err("data_error=x%08x\n", hwdescr->data_error);
  pr_err("which=%ld\n", descr - card->rx_chain.ring);

  card->spider_stats.rx_desc_error++;
  goto bad_desc;
 }


 spider_net_pass_skb_up(descr, card);
 descr->skb = ((void*)0);
 hwdescr->dmac_cmd_status = SPIDER_NET_DESCR_NOT_IN_USE;
 return 1;

bad_desc:
 if (netif_msg_rx_err(card))
  show_rx_chain(card);
 dev_kfree_skb_irq(descr->skb);
 descr->skb = ((void*)0);
 hwdescr->dmac_cmd_status = SPIDER_NET_DESCR_NOT_IN_USE;
 return 0;
}
