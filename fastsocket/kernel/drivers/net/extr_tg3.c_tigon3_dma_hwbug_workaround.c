
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct tg3_napi {TYPE_1__* tx_buffers; struct tg3* tp; } ;
struct tg3 {int pdev; } ;
struct sk_buff {int len; scalar_t__ data; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct sk_buff* skb; } ;


 scalar_t__ ASIC_REV_5701 ;
 int GFP_ATOMIC ;
 int PCI_DMA_TODEVICE ;
 size_t TXD_FLAG_END ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_addr_set (TYPE_1__*,int ,int ) ;
 int mapping ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,scalar_t__,int ,int ) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,scalar_t__,int ,int ) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 scalar_t__ tg3_tx_frag_set (struct tg3_napi*,size_t*,size_t*,int ,int ,size_t,size_t,size_t) ;
 int tg3_tx_skb_unmap (struct tg3_napi*,size_t,int) ;

__attribute__((used)) static int tigon3_dma_hwbug_workaround(struct tg3_napi *tnapi,
           struct sk_buff **pskb,
           u32 *entry, u32 *budget,
           u32 base_flags, u32 mss, u32 vlan)
{
 struct tg3 *tp = tnapi->tp;
 struct sk_buff *new_skb, *skb = *pskb;
 dma_addr_t new_addr = 0;
 int ret = 0;

 if (tg3_asic_rev(tp) != ASIC_REV_5701)
  new_skb = skb_copy(skb, GFP_ATOMIC);
 else {
  int more_headroom = 4 - ((unsigned long)skb->data & 3);

  new_skb = skb_copy_expand(skb,
       skb_headroom(skb) + more_headroom,
       skb_tailroom(skb), GFP_ATOMIC);
 }

 if (!new_skb) {
  ret = -1;
 } else {

  new_addr = pci_map_single(tp->pdev, new_skb->data, new_skb->len,
       PCI_DMA_TODEVICE);

  if (pci_dma_mapping_error(tp->pdev, new_addr)) {
   dev_kfree_skb(new_skb);
   ret = -1;
  } else {
   u32 save_entry = *entry;

   base_flags |= TXD_FLAG_END;

   tnapi->tx_buffers[*entry].skb = new_skb;
   dma_unmap_addr_set(&tnapi->tx_buffers[*entry],
        mapping, new_addr);

   if (tg3_tx_frag_set(tnapi, entry, budget, new_addr,
         new_skb->len, base_flags,
         mss, vlan)) {
    tg3_tx_skb_unmap(tnapi, save_entry, -1);
    dev_kfree_skb(new_skb);
    ret = -1;
   }
  }
 }

 dev_kfree_skb(skb);
 *pskb = new_skb;
 return ret;
}
