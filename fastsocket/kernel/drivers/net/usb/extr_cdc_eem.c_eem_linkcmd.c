
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int out; int udev; } ;
struct urb {int dummy; } ;
struct sk_buff {int len; int data; } ;


 int GFP_ATOMIC ;
 int dev_kfree_skb (struct sk_buff*) ;
 int devwarn (struct usbnet*,char*) ;
 int eem_linkcmd_complete ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void eem_linkcmd(struct usbnet *dev, struct sk_buff *skb)
{
 struct urb *urb;
 int status;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb)
  goto fail;

 usb_fill_bulk_urb(urb, dev->udev, dev->out,
   skb->data, skb->len, eem_linkcmd_complete, skb);

 status = usb_submit_urb(urb, GFP_ATOMIC);
 if (status) {
  usb_free_urb(urb);
fail:
  dev_kfree_skb(skb);
  devwarn(dev, "link cmd failure\n");
  return;
 }
}
