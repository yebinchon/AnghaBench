
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_5__ {int tx_bytes; int tx_packets; int tx_errors; } ;
struct net_device {int trans_start; TYPE_1__ stats; int dev; } ;
struct TYPE_6__ {int netdev; int tx_urb; int udev; struct sk_buff* tx_skb; } ;
typedef TYPE_2__ rtl8150_t ;
typedef int netdev_tx_t ;


 int ENODEV ;
 int GFP_ATOMIC ;
 int NETDEV_TX_OK ;
 int dev_warn (int *,char*,int) ;
 int jiffies ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int netif_device_detach (int ) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int usb_fill_bulk_urb (int ,int ,int ,int ,int,int ,TYPE_2__*) ;
 int usb_sndbulkpipe (int ,int) ;
 int usb_submit_urb (int ,int ) ;
 int write_bulk_callback ;

__attribute__((used)) static netdev_tx_t rtl8150_start_xmit(struct sk_buff *skb,
         struct net_device *netdev)
{
 rtl8150_t *dev = netdev_priv(netdev);
 int count, res;

 netif_stop_queue(netdev);
 count = (skb->len < 60) ? 60 : skb->len;
 count = (count & 0x3f) ? count : count + 1;
 dev->tx_skb = skb;
 usb_fill_bulk_urb(dev->tx_urb, dev->udev, usb_sndbulkpipe(dev->udev, 2),
        skb->data, count, write_bulk_callback, dev);
 if ((res = usb_submit_urb(dev->tx_urb, GFP_ATOMIC))) {

  if (res == -ENODEV)
   netif_device_detach(dev->netdev);
  else {
   dev_warn(&netdev->dev, "failed tx_urb %d\n", res);
   netdev->stats.tx_errors++;
   netif_start_queue(netdev);
  }
 } else {
  netdev->stats.tx_packets++;
  netdev->stats.tx_bytes += skb->len;
  netdev->trans_start = jiffies;
 }

 return NETDEV_TX_OK;
}
