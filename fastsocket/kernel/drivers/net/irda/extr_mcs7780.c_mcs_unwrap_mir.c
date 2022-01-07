
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_2__* dev; int protocol; } ;
struct mcs_cb {TYPE_2__* netdev; } ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_3__ {int rx_bytes; int rx_packets; int rx_dropped; int rx_crc_errors; int rx_errors; int rx_length_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; int name; } ;


 int ETH_P_IRDA ;
 int GOOD_FCS ;
 int IRDA_ERROR (char*,int ,int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int htons (int ) ;
 int irda_calc_crc16 (int ,int *,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_copy_to_linear_data (struct sk_buff*,int *,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mcs_unwrap_mir(struct mcs_cb *mcs, __u8 *buf, int len)
{
 __u16 fcs;
 int new_len;
 struct sk_buff *skb;





 new_len = len - 2;
 if(unlikely(new_len <= 0)) {
  IRDA_ERROR("%s short frame length %d\n",
        mcs->netdev->name, new_len);
  ++mcs->netdev->stats.rx_errors;
  ++mcs->netdev->stats.rx_length_errors;
  return;
 }
 fcs = 0;
 fcs = irda_calc_crc16(~fcs, buf, len);

 if(fcs != GOOD_FCS) {
  IRDA_ERROR("crc error calc 0x%x len %d\n",
      fcs, new_len);
  mcs->netdev->stats.rx_errors++;
  mcs->netdev->stats.rx_crc_errors++;
  return;
 }

 skb = dev_alloc_skb(new_len + 1);
 if(unlikely(!skb)) {
  ++mcs->netdev->stats.rx_dropped;
  return;
 }

 skb_reserve(skb, 1);
 skb_copy_to_linear_data(skb, buf, new_len);
 skb_put(skb, new_len);
 skb_reset_mac_header(skb);
 skb->protocol = htons(ETH_P_IRDA);
 skb->dev = mcs->netdev;

 netif_rx(skb);

 mcs->netdev->stats.rx_packets++;
 mcs->netdev->stats.rx_bytes += new_len;

 return;
}
