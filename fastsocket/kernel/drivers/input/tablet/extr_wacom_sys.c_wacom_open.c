
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wacom {int open; int lock; TYPE_1__* intf; int irq; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct wacom* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ usb_autopm_get_interface (TYPE_1__*) ;
 int usb_autopm_put_interface (TYPE_1__*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int wacom_open(struct input_dev *dev)
{
 struct wacom *wacom = input_get_drvdata(dev);
 int retval = 0;

 if (usb_autopm_get_interface(wacom->intf) < 0)
  return -EIO;

 mutex_lock(&wacom->lock);

 if (usb_submit_urb(wacom->irq, GFP_KERNEL)) {
  retval = -EIO;
  goto out;
 }

 wacom->open = 1;
 wacom->intf->needs_remote_wakeup = 1;

out:
 if (retval)
  usb_autopm_put_interface(wacom->intf);
 mutex_unlock(&wacom->lock);
 return retval;
}
