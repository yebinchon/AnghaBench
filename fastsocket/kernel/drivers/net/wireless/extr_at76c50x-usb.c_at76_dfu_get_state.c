
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int DFU_GETSTATE ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static u8 at76_dfu_get_state(struct usb_device *udev, u8 *state)
{
 int ret;

 ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), DFU_GETSTATE,
         USB_TYPE_CLASS | USB_DIR_IN | USB_RECIP_INTERFACE,
         0, 0, state, 1, USB_CTRL_GET_TIMEOUT);
 return ret;
}
