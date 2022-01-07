
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int udev; } ;


 int DM_WRITE_REG ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int devdbg (struct usbnet*,char*,int ,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int dm_write_reg(struct usbnet *dev, u8 reg, u8 value)
{
 devdbg(dev, "dm_write_reg() reg=0x%02x, value=0x%02x", reg, value);
 return usb_control_msg(dev->udev,
          usb_sndctrlpipe(dev->udev, 0),
          DM_WRITE_REG,
          USB_DIR_OUT | USB_TYPE_VENDOR |USB_RECIP_DEVICE,
          value, reg, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
}
