
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union txhdr_union {int txhdr_fw3; } ;
typedef int u8 ;
struct sk_buff {size_t len; scalar_t__ data; } ;
struct b43legacy_pioqueue {scalar_t__ need_workarounds; int dev; } ;
struct b43legacy_pio_txpacket {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;


 int B43legacy_WARN_ON (int) ;
 int IEEE80211_SKB_CB (struct sk_buff*) ;
 int b43legacy_generate_txhdr (int ,int *,scalar_t__,size_t,int ,int ) ;
 int generate_cookie (struct b43legacy_pioqueue*,struct b43legacy_pio_txpacket*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int tx_complete (struct b43legacy_pioqueue*,struct sk_buff*) ;
 int tx_data (struct b43legacy_pioqueue*,int *,int *,unsigned int) ;
 int tx_start (struct b43legacy_pioqueue*) ;

__attribute__((used)) static int pio_tx_write_fragment(struct b43legacy_pioqueue *queue,
      struct sk_buff *skb,
      struct b43legacy_pio_txpacket *packet,
      size_t txhdr_size)
{
 union txhdr_union txhdr_data;
 u8 *txhdr = ((void*)0);
 unsigned int octets;
 int err;

 txhdr = (u8 *)(&txhdr_data.txhdr_fw3);

 B43legacy_WARN_ON(skb_shinfo(skb)->nr_frags != 0);
 err = b43legacy_generate_txhdr(queue->dev,
     txhdr, skb->data, skb->len,
     IEEE80211_SKB_CB(skb),
     generate_cookie(queue, packet));
 if (err)
  return err;

 tx_start(queue);
 octets = skb->len + txhdr_size;
 if (queue->need_workarounds)
  octets--;
 tx_data(queue, txhdr, (u8 *)skb->data, octets);
 tx_complete(queue, skb);

 return 0;
}
