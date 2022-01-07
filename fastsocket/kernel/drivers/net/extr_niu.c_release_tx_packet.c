
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct tx_ring_info {struct tx_buff_info* tx_buffs; int mark_pending; int * descr; int tx_bytes; int tx_packets; } ;
struct tx_pkt_hdr {int flags; } ;
struct tx_buff_info {int mapping; struct sk_buff* skb; } ;
struct sk_buff {scalar_t__ data; } ;
struct niu {int device; TYPE_1__* ops; } ;
struct TYPE_6__ {int nr_frags; TYPE_2__* frags; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int (* unmap_page ) (int ,int ,int ,int ) ;int (* unmap_single ) (int ,int ,int,int ) ;} ;


 int BUG_ON (int ) ;
 int DMA_TO_DEVICE ;
 scalar_t__ MAX_TX_DESC_LEN ;
 int NEXT_TX (struct tx_ring_info*,int) ;
 int TXHDR_LEN ;
 int TXHDR_LEN_SHIFT ;
 int TXHDR_PAD ;
 int TX_DESC_MARK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int le64_to_cpu (int ) ;
 int le64_to_cpup (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int stub1 (int ,int ,int,int ) ;
 int stub2 (int ,int ,int ,int ) ;

__attribute__((used)) static int release_tx_packet(struct niu *np, struct tx_ring_info *rp, int idx)
{
 struct tx_buff_info *tb = &rp->tx_buffs[idx];
 struct sk_buff *skb = tb->skb;
 struct tx_pkt_hdr *tp;
 u64 tx_flags;
 int i, len;

 tp = (struct tx_pkt_hdr *) skb->data;
 tx_flags = le64_to_cpup(&tp->flags);

 rp->tx_packets++;
 rp->tx_bytes += (((tx_flags & TXHDR_LEN) >> TXHDR_LEN_SHIFT) -
    ((tx_flags & TXHDR_PAD) / 2));

 len = skb_headlen(skb);
 np->ops->unmap_single(np->device, tb->mapping,
         len, DMA_TO_DEVICE);

 if (le64_to_cpu(rp->descr[idx]) & TX_DESC_MARK)
  rp->mark_pending--;

 tb->skb = ((void*)0);
 do {
  idx = NEXT_TX(rp, idx);
  len -= MAX_TX_DESC_LEN;
 } while (len > 0);

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  tb = &rp->tx_buffs[idx];
  BUG_ON(tb->skb != ((void*)0));
  np->ops->unmap_page(np->device, tb->mapping,
        skb_shinfo(skb)->frags[i].size,
        DMA_TO_DEVICE);
  idx = NEXT_TX(rp, idx);
 }

 dev_kfree_skb(skb);

 return idx;
}
