
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct dfu_status {int dummy; } ;


 int DFU_GETSTATUS ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,struct dfu_status*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int at76_dfu_get_status(struct usb_device *udev,
          struct dfu_status *status)
{
 int ret;

 ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), DFU_GETSTATUS,
         USB_TYPE_CLASS | USB_DIR_IN | USB_RECIP_INTERFACE,
         0, 0, status, sizeof(struct dfu_status),
         USB_CTRL_GET_TIMEOUT);
 return ret;
}
