
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct ar9170 {int tx_err; } ;


 int carl9170_tx_callback (struct ar9170*,struct sk_buff*) ;
 int carl9170_tx_drop (struct ar9170*,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;

void carl9170_usb_handle_tx_err(struct ar9170 *ar)
{
 struct urb *urb;

 while ((urb = usb_get_from_anchor(&ar->tx_err))) {
  struct sk_buff *skb = (void *)urb->context;

  carl9170_tx_drop(ar, skb);
  carl9170_tx_callback(ar, skb);
  usb_free_urb(urb);
 }
}
