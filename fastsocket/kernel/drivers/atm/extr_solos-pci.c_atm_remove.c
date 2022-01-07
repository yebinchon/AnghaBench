
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct solos_card {int nr_ports; int * tx_queue; TYPE_2__* dev; struct sk_buff** tx_skb; struct sk_buff** rx_skb; TYPE_3__** atmdev; } ;
struct sk_buff {int len; } ;
struct TYPE_8__ {int dma_addr; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_7__ {TYPE_1__ class_dev; int number; } ;
struct TYPE_6__ {int dev; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int RX_DMA_SIZE ;
 TYPE_4__* SKB_CB (struct sk_buff*) ;
 int atm_dev_deregister (TYPE_3__*) ;
 int dev_info (int *,char*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int pci_unmap_single (TYPE_2__*,int ,int ,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int solos_attr_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void atm_remove(struct solos_card *card)
{
 int i;

 for (i = 0; i < card->nr_ports; i++) {
  if (card->atmdev[i]) {
   struct sk_buff *skb;

   dev_info(&card->dev->dev, "Unregistering ATM device %d\n", card->atmdev[i]->number);

   sysfs_remove_group(&card->atmdev[i]->class_dev.kobj, &solos_attr_group);
   atm_dev_deregister(card->atmdev[i]);

   skb = card->rx_skb[i];
   if (skb) {
    pci_unmap_single(card->dev, SKB_CB(skb)->dma_addr,
       RX_DMA_SIZE, PCI_DMA_FROMDEVICE);
    dev_kfree_skb(skb);
   }
   skb = card->tx_skb[i];
   if (skb) {
    pci_unmap_single(card->dev, SKB_CB(skb)->dma_addr,
       skb->len, PCI_DMA_TODEVICE);
    dev_kfree_skb(skb);
   }
   while ((skb = skb_dequeue(&card->tx_queue[i])))
    dev_kfree_skb(skb);

  }
 }
}
