
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dev; } ;
struct urb {int dev; } ;


 int GFP_ATOMIC ;
 int err (char*,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void resubmit_urb(struct uvd *uvd, struct urb *urb)
{
 int ret;

 urb->dev = uvd->dev;
 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret)
  err("usb_submit_urb error (%d)", ret);
}
