
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int at76_get_cmd_status(struct usb_device *udev, u8 cmd)
{
 u8 *stat_buf;
 int ret;

 stat_buf = kmalloc(40, GFP_NOIO);
 if (!stat_buf)
  return -ENOMEM;

 ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), 0x22,
   USB_TYPE_VENDOR | USB_DIR_IN |
   USB_RECIP_INTERFACE, cmd, 0, stat_buf,
   40, USB_CTRL_GET_TIMEOUT);
 if (ret >= 0)
  ret = stat_buf[5];
 kfree(stat_buf);

 return ret;
}
