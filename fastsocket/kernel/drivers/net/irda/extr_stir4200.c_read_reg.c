
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct stir_cb {struct usb_device* usbdev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int CTRL_TIMEOUT ;
 int REQ_READ_REG ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int read_reg(struct stir_cb *stir, __u16 reg,
      __u8 *data, __u16 count)
{
 struct usb_device *dev = stir->usbdev;

 return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
          REQ_READ_REG,
          USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
          0, reg, data, count,
          CTRL_TIMEOUT);
}
