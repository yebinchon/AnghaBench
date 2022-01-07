
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct zc0301_device {scalar_t__* control_buffer; struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;


 int DBG (int,char*,int ,int) ;
 int PDBGG (char*,int ,int) ;
 int ZC0301_CTRL_TIMEOUT ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,scalar_t__*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

int zc0301_read_reg(struct zc0301_device* cam, u16 index)
{
 struct usb_device* udev = cam->usbdev;
 u8* buff = cam->control_buffer;
 int res;

 res = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), 0xa1, 0xc0,
         0x0001, index, buff, 1, ZC0301_CTRL_TIMEOUT);
 if (res < 0)
  DBG(3, "Failed to read a register (index 0x%04X, error %d)",
      index, res);

 PDBGG("Read: index 0x%04X, value: 0x%04X", index, (int)(*buff));

 return (res >= 0) ? (int)(*buff) : -1;
}
