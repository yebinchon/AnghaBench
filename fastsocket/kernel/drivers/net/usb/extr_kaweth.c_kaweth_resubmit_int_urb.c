
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kaweth_device {int suspend_lowmem_ctrl; TYPE_2__* dev; int lowmem_work; int irq_urb; } ;
typedef int gfp_t ;
struct TYPE_4__ {int devpath; TYPE_1__* bus; } ;
struct TYPE_3__ {int bus_name; } ;


 int ENOMEM ;
 int HZ ;
 int err (char*,int ,int ,int) ;
 int schedule_delayed_work (int *,int) ;
 scalar_t__ unlikely (int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void kaweth_resubmit_int_urb(struct kaweth_device *kaweth, gfp_t mf)
{
 int status;

 status = usb_submit_urb (kaweth->irq_urb, mf);
 if (unlikely(status == -ENOMEM)) {
  kaweth->suspend_lowmem_ctrl = 1;
  schedule_delayed_work(&kaweth->lowmem_work, HZ/4);
 } else {
  kaweth->suspend_lowmem_ctrl = 0;
 }

 if (status)
  err ("can't resubmit intr, %s-%s, status %d",
    kaweth->dev->bus->bus_name,
    kaweth->dev->devpath, status);
}
