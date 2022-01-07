
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int * altsetting; } ;
struct TYPE_4__ {int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
struct TYPE_3__ {scalar_t__ reverse_alts; scalar_t__ bulk; } ;
struct gspca_dev {int alt; int nbalt; int iface; int dev; TYPE_1__ cam; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*,int,int ) ;
 int USB_ENDPOINT_XFER_BULK ;
 int USB_ENDPOINT_XFER_ISOC ;
 struct usb_host_endpoint* alt_xfer (int *,int) ;
 int err (char*,...) ;
 struct usb_interface* usb_ifnum_to_if (int ,int ) ;
 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static struct usb_host_endpoint *get_ep(struct gspca_dev *gspca_dev)
{
 struct usb_interface *intf;
 struct usb_host_endpoint *ep;
 int xfer, i, ret;

 intf = usb_ifnum_to_if(gspca_dev->dev, gspca_dev->iface);
 ep = ((void*)0);
 xfer = gspca_dev->cam.bulk ? USB_ENDPOINT_XFER_BULK
       : USB_ENDPOINT_XFER_ISOC;
 i = gspca_dev->alt;
 if (gspca_dev->cam.reverse_alts) {
  while (++i < gspca_dev->nbalt) {
   ep = alt_xfer(&intf->altsetting[i], xfer);
   if (ep)
    break;
  }
 } else {
  while (--i >= 0) {
   ep = alt_xfer(&intf->altsetting[i], xfer);
   if (ep)
    break;
  }
 }
 if (ep == ((void*)0)) {
  err("no transfer endpoint found");
  return ((void*)0);
 }
 PDEBUG(D_STREAM, "use alt %d ep 0x%02x",
   i, ep->desc.bEndpointAddress);
 gspca_dev->alt = i;
 if (gspca_dev->nbalt > 1) {
  ret = usb_set_interface(gspca_dev->dev, gspca_dev->iface, i);
  if (ret < 0) {
   err("set alt %d err %d", i, ret);
   ep = ((void*)0);
  }
 }
 return ep;
}
