
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int HID_REQ_SET_IDLE ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int hid_set_idle(struct usb_device *dev, int ifnum, int report, int idle)
{
 return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
  HID_REQ_SET_IDLE, USB_TYPE_CLASS | USB_RECIP_INTERFACE, (idle << 8) | report,
  ifnum, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
}
