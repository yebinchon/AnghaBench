
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; } ;
struct ar9170 {int tx_anch_urbs; int tx_err; TYPE_1__* udev; int tx_anch; int tx_wait; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AR9170_NUM_TX_URBS ;
 int GFP_ATOMIC ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int dev_err (int *,char*,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ net_ratelimit () ;
 scalar_t__ unlikely (int) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void carl9170_usb_submit_data_urb(struct ar9170 *ar)
{
 struct urb *urb;
 int err;

 if (atomic_inc_return(&ar->tx_anch_urbs) > AR9170_NUM_TX_URBS)
  goto err_acc;

 urb = usb_get_from_anchor(&ar->tx_wait);
 if (!urb)
  goto err_acc;

 usb_anchor_urb(urb, &ar->tx_anch);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (unlikely(err)) {
  if (net_ratelimit()) {
   dev_err(&ar->udev->dev, "tx submit failed (%d)\n",
    urb->status);
  }

  usb_unanchor_urb(urb);
  usb_anchor_urb(urb, &ar->tx_err);
 }

 usb_free_urb(urb);

 if (likely(err == 0))
  return;

err_acc:
 atomic_dec(&ar->tx_anch_urbs);
}
