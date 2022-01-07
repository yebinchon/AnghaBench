
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct sn9c102_device {scalar_t__* control_buffer; struct usb_device* usbdev; } ;


 int DBG (int,char*,int ,int) ;
 int SN9C102_CTRL_TIMEOUT ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,scalar_t__*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

int sn9c102_read_reg(struct sn9c102_device* cam, u16 index)
{
 struct usb_device* udev = cam->usbdev;
 u8* buff = cam->control_buffer;
 int res;

 res = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), 0x00, 0xc1,
         index, 0, buff, 1, SN9C102_CTRL_TIMEOUT);
 if (res < 0)
  DBG(3, "Failed to read a register (index 0x%02X, error %d)",
      index, res);

 return (res >= 0) ? (int)(*buff) : -1;
}
