
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;


 int EIO ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,void*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int at76_get_mib(struct usb_device *udev, u16 mib, void *buf,
          int buf_size)
{
 int ret;

 ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), 0x33,
         USB_TYPE_VENDOR | USB_DIR_IN |
         USB_RECIP_INTERFACE, mib << 8, 0, buf, buf_size,
         USB_CTRL_GET_TIMEOUT);
 if (ret >= 0 && ret != buf_size)
  return -EIO;
 return ret;
}
