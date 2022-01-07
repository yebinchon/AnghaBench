
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; scalar_t__ actual_length; int * transfer_buffer; struct ksdazzle_cb* context; } ;
struct net_device {int stats; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct ksdazzle_cb {int receiving; TYPE_1__ rx_unwrap_buff; struct net_device* netdev; } ;
typedef int __u8 ;


 int GFP_ATOMIC ;
 scalar_t__ OUTSIDE_FRAME ;
 int async_unwrap_char (struct net_device*,int *,TYPE_1__*,int ) ;
 int err (char*,scalar_t__) ;
 int netif_running (struct net_device*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void ksdazzle_rcv_irq(struct urb *urb)
{
 struct ksdazzle_cb *kingsun = urb->context;
 struct net_device *netdev = kingsun->netdev;


 if (!netif_running(netdev)) {
  kingsun->receiving = 0;
  return;
 }


 if (urb->status != 0) {
  err("ksdazzle_rcv_irq: urb asynchronously failed - %d",
      urb->status);
  kingsun->receiving = 0;
  return;
 }

 if (urb->actual_length > 0) {
  __u8 *bytes = urb->transfer_buffer;
  unsigned int i;

  for (i = 0; i < urb->actual_length; i++) {
   async_unwrap_char(netdev, &netdev->stats,
       &kingsun->rx_unwrap_buff, bytes[i]);
  }
  kingsun->receiving =
      (kingsun->rx_unwrap_buff.state != OUTSIDE_FRAME) ? 1 : 0;
 }




 urb->status = 0;
 usb_submit_urb(urb, GFP_ATOMIC);
}
