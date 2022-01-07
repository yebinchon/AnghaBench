
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zd1201 {unsigned char* txdata; struct urb* tx_urb; int endp_out; int usb; scalar_t__ monitor; int mac_enabled; } ;
struct urb {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_errors; int tx_dropped; } ;
struct net_device {int trans_start; TYPE_1__ stats; } ;
typedef int netdev_tx_t ;
typedef int __be16 ;


 int GFP_ATOMIC ;
 int NETDEV_TX_OK ;
 int htons (int) ;
 int jiffies ;
 int kfree_skb (struct sk_buff*) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_copy_from_linear_data (struct sk_buff*,unsigned char*,int) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,int,unsigned char*,int) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,unsigned char*,int,int ,struct zd1201*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int zd1201_usbtx ;

__attribute__((used)) static netdev_tx_t zd1201_hard_start_xmit(struct sk_buff *skb,
      struct net_device *dev)
{
 struct zd1201 *zd = netdev_priv(dev);
 unsigned char *txbuf = zd->txdata;
 int txbuflen, pad = 0, err;
 struct urb *urb = zd->tx_urb;

 if (!zd->mac_enabled || zd->monitor) {
  dev->stats.tx_dropped++;
  kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 netif_stop_queue(dev);

 txbuflen = skb->len + 8 + 1;
 if (txbuflen%64 == 0) {
  pad = 1;
  txbuflen++;
 }
 txbuf[0] = 0xAA;
 txbuf[1] = 0xAA;
 txbuf[2] = 0x03;
 txbuf[3] = 0x00;
 txbuf[4] = 0x00;
 txbuf[5] = 0x00;

 skb_copy_from_linear_data_offset(skb, 12, txbuf + 6, skb->len - 12);
 if (pad)
  txbuf[skb->len-12+6]=0;
 skb_copy_from_linear_data(skb, txbuf + skb->len - 12 + 6 + pad, 12);
 *(__be16*)&txbuf[skb->len+6+pad] = htons(skb->len-12+6);
 txbuf[txbuflen-1] = 0;

 usb_fill_bulk_urb(urb, zd->usb, usb_sndbulkpipe(zd->usb, zd->endp_out),
     txbuf, txbuflen, zd1201_usbtx, zd);

 err = usb_submit_urb(zd->tx_urb, GFP_ATOMIC);
 if (err) {
  dev->stats.tx_errors++;
  netif_start_queue(dev);
 } else {
  dev->stats.tx_packets++;
  dev->stats.tx_bytes += skb->len;
  dev->trans_start = jiffies;
 }
 kfree_skb(skb);

 return NETDEV_TX_OK;
}
