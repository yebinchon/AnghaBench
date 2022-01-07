
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int len; int truesize; scalar_t__ head; scalar_t__ data; struct sk_buff* skb; } ;
struct stir_cb {TYPE_2__* netdev; TYPE_3__ rx_buff; } ;
struct sk_buff {TYPE_2__* dev; int protocol; scalar_t__ data; } ;
typedef TYPE_3__ iobuff_t ;
typedef int __u32 ;
struct TYPE_4__ {int rx_bytes; int rx_packets; int rx_dropped; int rx_crc_errors; int rx_errors; int rx_length_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; int name; } ;


 int ETH_P_IRDA ;
 int IRDA_RX_COPY_THRESHOLD ;
 int crc32_le (int ,scalar_t__,int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int get_unaligned_le32 (scalar_t__) ;
 int htons (int ) ;
 int netif_rx (struct sk_buff*) ;
 int pr_debug (char*,int ,int) ;
 int skb_copy_to_linear_data (struct sk_buff*,scalar_t__,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void fir_eof(struct stir_cb *stir)
{
 iobuff_t *rx_buff = &stir->rx_buff;
 int len = rx_buff->len - 4;
 struct sk_buff *skb, *nskb;
 __u32 fcs;

 if (unlikely(len <= 0)) {
  pr_debug("%s: short frame len %d\n",
    stir->netdev->name, len);

  ++stir->netdev->stats.rx_errors;
  ++stir->netdev->stats.rx_length_errors;
  return;
 }

 fcs = ~(crc32_le(~0, rx_buff->data, len));
 if (fcs != get_unaligned_le32(rx_buff->data + len)) {
  pr_debug("crc error calc 0x%x len %d\n", fcs, len);
  stir->netdev->stats.rx_errors++;
  stir->netdev->stats.rx_crc_errors++;
  return;
 }


 if (len < IRDA_RX_COPY_THRESHOLD) {
  nskb = dev_alloc_skb(len + 1);
  if (unlikely(!nskb)) {
   ++stir->netdev->stats.rx_dropped;
   return;
  }
  skb_reserve(nskb, 1);
  skb = nskb;
  skb_copy_to_linear_data(nskb, rx_buff->data, len);
 } else {
  nskb = dev_alloc_skb(rx_buff->truesize);
  if (unlikely(!nskb)) {
   ++stir->netdev->stats.rx_dropped;
   return;
  }
  skb_reserve(nskb, 1);
  skb = rx_buff->skb;
  rx_buff->skb = nskb;
  rx_buff->head = nskb->data;
 }

 skb_put(skb, len);

 skb_reset_mac_header(skb);
 skb->protocol = htons(ETH_P_IRDA);
 skb->dev = stir->netdev;

 netif_rx(skb);

 stir->netdev->stats.rx_packets++;
 stir->netdev->stats.rx_bytes += len;

 rx_buff->data = rx_buff->head;
 rx_buff->len = 0;
}
