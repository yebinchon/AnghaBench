
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; } ;
struct ar9170 {int rx_anch; int udev; } ;


 int AR9170_USB_EP_CTRL_MAX ;
 int AR9170_USB_EP_IRQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_FREE_BUFFER ;
 int carl9170_usb_rx_irq_complete ;
 void* kmalloc (int ,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_int_urb (struct urb*,int ,int ,void*,int ,int ,struct ar9170*,int) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int carl9170_usb_send_rx_irq_urb(struct ar9170 *ar)
{
 struct urb *urb = ((void*)0);
 void *ibuf;
 int err = -ENOMEM;

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  goto out;

 ibuf = kmalloc(AR9170_USB_EP_CTRL_MAX, GFP_KERNEL);
 if (!ibuf)
  goto out;

 usb_fill_int_urb(urb, ar->udev, usb_rcvintpipe(ar->udev,
    AR9170_USB_EP_IRQ), ibuf, AR9170_USB_EP_CTRL_MAX,
    carl9170_usb_rx_irq_complete, ar, 1);

 urb->transfer_flags |= URB_FREE_BUFFER;

 usb_anchor_urb(urb, &ar->rx_anch);
 err = usb_submit_urb(urb, GFP_KERNEL);
 if (err)
  usb_unanchor_urb(urb);

out:
 usb_free_urb(urb);
 return err;
}
