
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {TYPE_1__* altsetting; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_3__ {TYPE_2__ desc; } ;


 int EPIPE ;
 int ETIMEDOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_REPORT ;
 int USB_TYPE_CLASS ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,void*,size_t,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int wacom_get_report(struct usb_interface *intf, u8 type, u8 id,
       void *buf, size_t size, unsigned int retries)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 int retval;

 do {
  retval = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
    USB_REQ_GET_REPORT,
    USB_DIR_IN | USB_TYPE_CLASS |
    USB_RECIP_INTERFACE,
    (type << 8) + id,
    intf->altsetting[0].desc.bInterfaceNumber,
    buf, size, 100);
 } while ((retval == -ETIMEDOUT || retval == -EPIPE) && --retries);

 return retval;
}
