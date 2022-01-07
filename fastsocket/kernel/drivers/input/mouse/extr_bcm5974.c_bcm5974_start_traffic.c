
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm5974 {int bt_urb; int tp_urb; } ;


 int EIO ;
 int GFP_KERNEL ;
 scalar_t__ bcm5974_wellspring_mode (struct bcm5974*,int) ;
 int dprintk (int,char*) ;
 int usb_kill_urb (int ) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int bcm5974_start_traffic(struct bcm5974 *dev)
{
 if (bcm5974_wellspring_mode(dev, 1)) {
  dprintk(1, "bcm5974: mode switch failed\n");
  goto error;
 }

 if (usb_submit_urb(dev->bt_urb, GFP_KERNEL))
  goto error;

 if (usb_submit_urb(dev->tp_urb, GFP_KERNEL))
  goto err_kill_bt;

 return 0;

err_kill_bt:
 usb_kill_urb(dev->bt_urb);
error:
 return -EIO;
}
