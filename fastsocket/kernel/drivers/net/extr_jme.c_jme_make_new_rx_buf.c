
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct jme_ring {struct jme_buffer_info* bufinf; } ;
struct jme_buffer_info {int len; int mapping; struct sk_buff* skb; } ;
struct jme_adapter {int pdev; TYPE_1__* dev; struct jme_ring* rxring; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ RX_EXTRA_LEN ;
 struct sk_buff* netdev_alloc_skb (TYPE_1__*,scalar_t__) ;
 int offset_in_page (int ) ;
 int pci_map_page (int ,int ,int ,int ,int ) ;
 int skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int virt_to_page (int ) ;

__attribute__((used)) static int
jme_make_new_rx_buf(struct jme_adapter *jme, int i)
{
 struct jme_ring *rxring = &(jme->rxring[0]);
 struct jme_buffer_info *rxbi = rxring->bufinf + i;
 struct sk_buff *skb;

 skb = netdev_alloc_skb(jme->dev,
  jme->dev->mtu + RX_EXTRA_LEN);
 if (unlikely(!skb))
  return -ENOMEM;

 rxbi->skb = skb;
 rxbi->len = skb_tailroom(skb);
 rxbi->mapping = pci_map_page(jme->pdev,
     virt_to_page(skb->data),
     offset_in_page(skb->data),
     rxbi->len,
     PCI_DMA_FROMDEVICE);

 return 0;
}
