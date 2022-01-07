
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int udev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int usb_control_msg (int ,unsigned int,int,int,int,int,void*,int ,int) ;
 unsigned int usb_rcvctrlpipe (int ,int ) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int __uvc_query_ctrl(struct uvc_device *dev, __u8 query, __u8 unit,
   __u8 intfnum, __u8 cs, void *data, __u16 size,
   int timeout)
{
 __u8 type = USB_TYPE_CLASS | USB_RECIP_INTERFACE;
 unsigned int pipe;

 pipe = (query & 0x80) ? usb_rcvctrlpipe(dev->udev, 0)
         : usb_sndctrlpipe(dev->udev, 0);
 type |= (query & 0x80) ? USB_DIR_IN : USB_DIR_OUT;

 return usb_control_msg(dev->udev, pipe, query, type, cs << 8,
   unit << 8 | intfnum, data, size, timeout);
}
