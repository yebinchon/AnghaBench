
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; int actual_length; int transfer_buffer; struct stir_cb* context; } ;
struct stir_cb {int thread; scalar_t__ receiving; TYPE_1__* netdev; int rx_time; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 int dev_warn (int *,char*,int) ;
 int do_gettimeofday (int *) ;
 int netif_running (TYPE_1__*) ;
 int pr_debug (char*,int ) ;
 int unwrap_chars (struct stir_cb*,int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void stir_rcv_irq(struct urb *urb)
{
 struct stir_cb *stir = urb->context;
 int err;


 if (!netif_running(stir->netdev))
  return;


 if (urb->status != 0)
  return;

 if (urb->actual_length > 0) {
  pr_debug("receive %d\n", urb->actual_length);
  unwrap_chars(stir, urb->transfer_buffer,
        urb->actual_length);

  do_gettimeofday(&stir->rx_time);
 }


 if (!stir->receiving)
  return;


 err = usb_submit_urb(urb, GFP_ATOMIC);


 if (err) {
  dev_warn(&stir->netdev->dev, "usb receive submit error: %d\n",
    err);
  stir->receiving = 0;
  wake_up_process(stir->thread);
 }
}
