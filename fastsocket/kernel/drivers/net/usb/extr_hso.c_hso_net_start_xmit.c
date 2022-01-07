
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_9__ {int tx_bytes; int tx_packets; int tx_errors; } ;
struct net_device {int trans_start; TYPE_3__ stats; } ;
struct hso_net {TYPE_6__* parent; TYPE_4__* mux_bulk_tx_urb; int mux_bulk_tx_buf; TYPE_1__* out_endp; struct sk_buff* skb_tx_buf; } ;
typedef int netdev_tx_t ;
struct TYPE_11__ {TYPE_2__* interface; int usb; } ;
struct TYPE_10__ {int transfer_flags; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int bEndpointAddress; } ;


 int D1 (char*,scalar_t__,int ) ;
 int DUMP1 (int ,scalar_t__) ;
 int EAGAIN ;
 int GFP_ATOMIC ;
 int MUX_BULK_TX_BUF_SIZE ;
 int NETDEV_TX_OK ;
 int URB_ZERO_PACKET ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_warn (int *,char*,int) ;
 int hso_get_activity (TYPE_6__*) ;
 int jiffies ;
 int memcpy (int ,int ,scalar_t__) ;
 struct hso_net* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int usb_fill_bulk_urb (TYPE_4__*,int ,int ,int ,scalar_t__,int ,struct hso_net*) ;
 int usb_sndbulkpipe (int ,int) ;
 int usb_submit_urb (TYPE_4__*,int ) ;
 int write_bulk_callback ;

__attribute__((used)) static netdev_tx_t hso_net_start_xmit(struct sk_buff *skb,
         struct net_device *net)
{
 struct hso_net *odev = netdev_priv(net);
 int result;


 netif_stop_queue(net);
 if (hso_get_activity(odev->parent) == -EAGAIN) {
  odev->skb_tx_buf = skb;
  return NETDEV_TX_OK;
 }


 DUMP1(skb->data, skb->len);

 memcpy(odev->mux_bulk_tx_buf, skb->data, skb->len);
 D1("len: %d/%d", skb->len, MUX_BULK_TX_BUF_SIZE);


 usb_fill_bulk_urb(odev->mux_bulk_tx_urb,
     odev->parent->usb,
     usb_sndbulkpipe(odev->parent->usb,
       odev->out_endp->
       bEndpointAddress & 0x7F),
     odev->mux_bulk_tx_buf, skb->len, write_bulk_callback,
     odev);


 odev->mux_bulk_tx_urb->transfer_flags |= URB_ZERO_PACKET;


 result = usb_submit_urb(odev->mux_bulk_tx_urb, GFP_ATOMIC);
 if (result) {
  dev_warn(&odev->parent->interface->dev,
   "failed mux_bulk_tx_urb %d", result);
  net->stats.tx_errors++;
  netif_start_queue(net);
 } else {
  net->stats.tx_packets++;
  net->stats.tx_bytes += skb->len;

  net->trans_start = jiffies;
 }
 dev_kfree_skb(skb);

 return NETDEV_TX_OK;
}
