
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {scalar_t__ status; scalar_t__ actual_length; int* transfer_buffer; struct ks959_cb* context; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct ks959_cb {int receiving; int rx_variable_xormask; TYPE_3__ rx_unwrap_buff; int rx_time; TYPE_1__* netdev; } ;
typedef int __u8 ;
struct TYPE_4__ {int stats; } ;


 int GFP_ATOMIC ;
 scalar_t__ OUTSIDE_FRAME ;
 int async_unwrap_char (TYPE_1__*,int *,TYPE_3__*,int) ;
 int do_gettimeofday (int *) ;
 int err (char*,scalar_t__) ;
 int netif_running (TYPE_1__*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void ks959_rcv_irq(struct urb *urb)
{
 struct ks959_cb *kingsun = urb->context;
 int ret;


 if (!netif_running(kingsun->netdev)) {
  kingsun->receiving = 0;
  return;
 }


 if (urb->status != 0) {
  err("kingsun_rcv_irq: urb asynchronously failed - %d",
      urb->status);
  kingsun->receiving = 0;
  return;
 }

 if (urb->actual_length > 0) {
  __u8 *bytes = urb->transfer_buffer;
  unsigned int i;

  for (i = 0; i < urb->actual_length; i++) {




   kingsun->rx_variable_xormask++;
   bytes[i] =
       bytes[i] ^ kingsun->rx_variable_xormask ^ 0x55u;




   if (kingsun->rx_variable_xormask != 0) {
    async_unwrap_char(kingsun->netdev,
        &kingsun->netdev->stats,
        &kingsun->rx_unwrap_buff,
        bytes[i]);
   }
  }
  do_gettimeofday(&kingsun->rx_time);
  kingsun->receiving =
      (kingsun->rx_unwrap_buff.state != OUTSIDE_FRAME) ? 1 : 0;
 }






 urb->status = 0;
 ret = usb_submit_urb(urb, GFP_ATOMIC);
}
