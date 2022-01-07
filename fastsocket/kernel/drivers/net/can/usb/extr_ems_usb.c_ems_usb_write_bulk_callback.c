
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; struct ems_tx_urb_context* context; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_2__ stats; int trans_start; TYPE_1__ dev; } ;
struct ems_usb {int active_tx_urbs; struct net_device* netdev; } ;
struct ems_tx_urb_context {int echo_index; scalar_t__ dlc; struct ems_usb* dev; } ;


 int BUG_ON (int) ;
 int MAX_TX_URBS ;
 int atomic_dec (int *) ;
 int can_get_echo_skb (struct net_device*,int ) ;
 int dev_info (int ,char*,int ) ;
 int jiffies ;
 int netif_device_present (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int usb_buffer_free (int ,int ,int ,int ) ;

__attribute__((used)) static void ems_usb_write_bulk_callback(struct urb *urb)
{
 struct ems_tx_urb_context *context = urb->context;
 struct ems_usb *dev;
 struct net_device *netdev;

 BUG_ON(!context);

 dev = context->dev;
 netdev = dev->netdev;


 usb_buffer_free(urb->dev, urb->transfer_buffer_length,
   urb->transfer_buffer, urb->transfer_dma);

 atomic_dec(&dev->active_tx_urbs);

 if (!netif_device_present(netdev))
  return;

 if (urb->status)
  dev_info(netdev->dev.parent, "Tx URB aborted (%d)\n",
    urb->status);

 netdev->trans_start = jiffies;


 netdev->stats.tx_packets++;
 netdev->stats.tx_bytes += context->dlc;

 can_get_echo_skb(netdev, context->echo_index);


 context->echo_index = MAX_TX_URBS;

 if (netif_queue_stopped(netdev))
  netif_wake_queue(netdev);
}
