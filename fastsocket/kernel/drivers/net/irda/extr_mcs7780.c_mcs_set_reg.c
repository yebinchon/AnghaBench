
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct mcs_cb {struct usb_device* usbdev; } ;
typedef int __u16 ;


 int MCS_CTRL_TIMEOUT ;
 int MCS_WRREQ ;
 int MCS_WR_RTYPE ;
 int msecs_to_jiffies (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int mcs_set_reg(struct mcs_cb *mcs, __u16 reg, __u16 val)
{
 struct usb_device *dev = mcs->usbdev;
 return usb_control_msg(dev, usb_sndctrlpipe(dev, 0), MCS_WRREQ,
          MCS_WR_RTYPE, val, reg, ((void*)0), 0,
          msecs_to_jiffies(MCS_CTRL_TIMEOUT));
}
