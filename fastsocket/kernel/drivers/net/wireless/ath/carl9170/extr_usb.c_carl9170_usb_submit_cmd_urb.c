
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct ar9170 {int tx_cmd_urbs; int tx_anch; int tx_cmd; } ;


 int GFP_ATOMIC ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ unlikely (int) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int carl9170_usb_submit_cmd_urb(struct ar9170 *ar)
{
 struct urb *urb;
 int err;

 if (atomic_inc_return(&ar->tx_cmd_urbs) != 1) {
  atomic_dec(&ar->tx_cmd_urbs);
  return 0;
 }

 urb = usb_get_from_anchor(&ar->tx_cmd);
 if (!urb) {
  atomic_dec(&ar->tx_cmd_urbs);
  return 0;
 }

 usb_anchor_urb(urb, &ar->tx_anch);
 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (unlikely(err)) {
  usb_unanchor_urb(urb);
  atomic_dec(&ar->tx_cmd_urbs);
 }
 usb_free_urb(urb);

 return err;
}
