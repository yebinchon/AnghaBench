
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int actual_length; int transfer_buffer; } ;
struct ar9170 {int rx_pool_urbs; int rx_pool; int rx_work_urbs; int rx_work; } ;


 int AR9170_NUM_RX_URBS_POOL ;
 int GFP_ATOMIC ;
 scalar_t__ IS_INITIALIZED (struct ar9170*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int carl9170_rx (struct ar9170*,int ,int ) ;
 int carl9170_usb_submit_rx_urb (struct ar9170*,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;

__attribute__((used)) static void carl9170_usb_rx_work(struct ar9170 *ar)
{
 struct urb *urb;
 int i;

 for (i = 0; i < AR9170_NUM_RX_URBS_POOL; i++) {
  urb = usb_get_from_anchor(&ar->rx_work);
  if (!urb)
   break;

  atomic_dec(&ar->rx_work_urbs);
  if (IS_INITIALIZED(ar)) {
   carl9170_rx(ar, urb->transfer_buffer,
        urb->actual_length);
  }

  usb_anchor_urb(urb, &ar->rx_pool);
  atomic_inc(&ar->rx_pool_urbs);

  usb_free_urb(urb);

  carl9170_usb_submit_rx_urb(ar, GFP_ATOMIC);
 }
}
