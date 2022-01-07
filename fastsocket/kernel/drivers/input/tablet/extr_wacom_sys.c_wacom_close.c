
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom {TYPE_1__* intf; int lock; scalar_t__ open; int irq; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ needs_remote_wakeup; } ;


 struct wacom* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_put_interface (TYPE_1__*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void wacom_close(struct input_dev *dev)
{
 struct wacom *wacom = input_get_drvdata(dev);

 mutex_lock(&wacom->lock);
 usb_kill_urb(wacom->irq);
 wacom->open = 0;
 wacom->intf->needs_remote_wakeup = 0;
 mutex_unlock(&wacom->lock);

 usb_autopm_put_interface(wacom->intf);
}
