
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct stk_camera {struct usb_device* udev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int stk_camera_write_reg(struct stk_camera *dev, u16 index, u8 value)
{
 struct usb_device *udev = dev->udev;
 int ret;

 ret = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
   0x01,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value,
   index,
   ((void*)0),
   0,
   500);
 if (ret < 0)
  return ret;
 else
  return 0;
}
