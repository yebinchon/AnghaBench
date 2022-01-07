
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbnet {TYPE_2__* net; int rxq_pause; int flags; } ;
struct skb_data {int dummy; } ;
struct sk_buff {int cb; int protocol; scalar_t__ len; } ;
struct ethhdr {int dummy; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int EVENT_RX_PAUSED ;
 int NET_RX_SUCCESS ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 int memset (int ,int ,int) ;
 int netif_dbg (struct usbnet*,int ,TYPE_2__*,char*,int,...) ;
 int netif_rx (struct sk_buff*) ;
 int rx_err ;
 int rx_status ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;

void usbnet_skb_return (struct usbnet *dev, struct sk_buff *skb)
{
 int status;

 if (test_bit(EVENT_RX_PAUSED, &dev->flags)) {
  skb_queue_tail(&dev->rxq_pause, skb);
  return;
 }

 skb->protocol = eth_type_trans (skb, dev->net);
 dev->net->stats.rx_packets++;
 dev->net->stats.rx_bytes += skb->len;

 netif_dbg(dev, rx_status, dev->net, "< rx, len %zu, type 0x%x\n",
    skb->len + sizeof (struct ethhdr), skb->protocol);
 memset (skb->cb, 0, sizeof (struct skb_data));
 status = netif_rx (skb);
 if (status != NET_RX_SUCCESS)
  netif_dbg(dev, rx_err, dev->net,
     "netif_rx status %d\n", status);
}
