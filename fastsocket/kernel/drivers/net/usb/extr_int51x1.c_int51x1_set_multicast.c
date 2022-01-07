
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int udev; } ;
struct usb_ctrlrequest {int bRequestType; scalar_t__ wLength; scalar_t__ wIndex; int wValue; int bRequest; } ;
struct urb {int dummy; } ;
struct net_device {int flags; scalar_t__ mc_count; } ;


 int GFP_ATOMIC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int PACKET_TYPE_ALL_MULTICAST ;
 int PACKET_TYPE_BROADCAST ;
 int PACKET_TYPE_DIRECTED ;
 int PACKET_TYPE_PROMISCUOUS ;
 int SET_ETHERNET_PACKET_FILTER ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int cpu_to_le16 (int) ;
 int devdbg (struct usbnet*,char*) ;
 int devinfo (struct usbnet*,char*) ;
 int devwarn (struct usbnet*,char*,...) ;
 int int51x1_async_cmd_callback ;
 int kfree (struct usb_ctrlrequest*) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (struct urb*,int ,int ,void*,int *,int ,int ,void*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void int51x1_set_multicast(struct net_device *netdev)
{
 struct usb_ctrlrequest *req;
 int status;
 struct urb *urb;
 struct usbnet *dev = netdev_priv(netdev);
 u16 filter = PACKET_TYPE_DIRECTED | PACKET_TYPE_BROADCAST;

 if (netdev->flags & IFF_PROMISC) {

  filter |= PACKET_TYPE_PROMISCUOUS;
  devinfo(dev, "promiscuous mode enabled");
 } else if (netdev->mc_count ||
    (netdev->flags & IFF_ALLMULTI)) {
  filter |= PACKET_TYPE_ALL_MULTICAST;
  devdbg(dev, "receive all multicast enabled");
 } else {

  devdbg(dev, "receive own packets only");
 }

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb) {
  devwarn(dev, "Error allocating URB");
  return;
 }

 req = kmalloc(sizeof(*req), GFP_ATOMIC);
 if (!req) {
  devwarn(dev, "Error allocating control msg");
  goto out;
 }

 req->bRequestType = USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE;
 req->bRequest = SET_ETHERNET_PACKET_FILTER;
 req->wValue = cpu_to_le16(filter);
 req->wIndex = 0;
 req->wLength = 0;

 usb_fill_control_urb(urb, dev->udev, usb_sndctrlpipe(dev->udev, 0),
  (void *)req, ((void*)0), 0,
  int51x1_async_cmd_callback,
  (void *)req);

 status = usb_submit_urb(urb, GFP_ATOMIC);
 if (status < 0) {
  devwarn(dev, "Error submitting control msg, sts=%d", status);
  goto out1;
 }
 return;
out1:
 kfree(req);
out:
 usb_free_urb(urb);
}
