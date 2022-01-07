
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int actual_length; int* transfer_buffer; scalar_t__ status; struct mcs_cb* context; } ;
struct mcs_cb {int speed; int rx_time; int rx_buff; TYPE_1__* netdev; } ;
typedef int __u8 ;
struct TYPE_3__ {int stats; } ;


 int GFP_ATOMIC ;
 int async_unwrap_char (TYPE_1__*,int *,int *,int) ;
 int do_gettimeofday (int *) ;
 int mcs_unwrap_fir (struct mcs_cb*,int*,int) ;
 int mcs_unwrap_mir (struct mcs_cb*,int*,int) ;
 int netif_running (TYPE_1__*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void mcs_receive_irq(struct urb *urb)
{
 __u8 *bytes;
 struct mcs_cb *mcs = urb->context;
 int i;
 int ret;

 if (!netif_running(mcs->netdev))
  return;

 if (urb->status)
  return;

 if (urb->actual_length > 0) {
  bytes = urb->transfer_buffer;





  if(mcs->speed < 576000) {
   async_unwrap_char(mcs->netdev, &mcs->netdev->stats,
      &mcs->rx_buff, 0xc0);

   for (i = 0; i < urb->actual_length; i++)
    async_unwrap_char(mcs->netdev, &mcs->netdev->stats,
       &mcs->rx_buff, bytes[i]);

   async_unwrap_char(mcs->netdev, &mcs->netdev->stats,
      &mcs->rx_buff, 0xc1);
  }

  else if(mcs->speed == 576000 || mcs->speed == 1152000) {
   mcs_unwrap_mir(mcs, urb->transfer_buffer,
    urb->actual_length);
  }

  else {
   mcs_unwrap_fir(mcs, urb->transfer_buffer,
    urb->actual_length);
  }
  do_gettimeofday(&mcs->rx_time);
 }

 ret = usb_submit_urb(urb, GFP_ATOMIC);
}
