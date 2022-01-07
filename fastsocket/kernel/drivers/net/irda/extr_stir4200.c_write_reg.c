
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct stir_cb {TYPE_1__* netdev; struct usb_device* usbdev; } ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_2__ {int name; } ;


 int CTRL_TIMEOUT ;
 int REQ_WRITE_SINGLE ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int pr_debug (char*,int ,int ,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int write_reg(struct stir_cb *stir, __u16 reg, __u8 value)
{
 struct usb_device *dev = stir->usbdev;

 pr_debug("%s: write reg %d = 0x%x\n",
   stir->netdev->name, reg, value);
 return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
          REQ_WRITE_SINGLE,
          USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_DEVICE,
          value, reg, ((void*)0), 0,
          CTRL_TIMEOUT);
}
