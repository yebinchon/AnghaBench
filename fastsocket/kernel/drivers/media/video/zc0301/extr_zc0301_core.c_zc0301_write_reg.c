
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zc0301_device {struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;


 int DBG (int,char*,int ,int ,int) ;
 int ZC0301_CTRL_TIMEOUT ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int zc0301_write_reg(struct zc0301_device* cam, u16 index, u16 value)
{
 struct usb_device* udev = cam->usbdev;
 int res;

 res = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0xa0, 0x40,
         value, index, ((void*)0), 0, ZC0301_CTRL_TIMEOUT);
 if (res < 0) {
  DBG(3, "Failed to write a register (index 0x%04X, "
         "value 0x%02X, error %d)",index, value, res);
  return -1;
 }

 return 0;
}
