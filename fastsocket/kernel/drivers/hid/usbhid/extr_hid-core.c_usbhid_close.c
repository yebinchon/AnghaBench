
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhid_device {int lock; TYPE_1__* intf; int urbin; } ;
struct hid_device {int open; struct usbhid_device* driver_data; } ;
struct TYPE_2__ {scalar_t__ needs_remote_wakeup; } ;


 int hid_cancel_delayed_stuff (struct usbhid_device*) ;
 int hid_open_mut ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_kill_urb (int ) ;

void usbhid_close(struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;

 mutex_lock(&hid_open_mut);





 spin_lock_irq(&usbhid->lock);
 if (!--hid->open) {
  spin_unlock_irq(&usbhid->lock);
  hid_cancel_delayed_stuff(usbhid);
  usb_kill_urb(usbhid->urbin);
  usbhid->intf->needs_remote_wakeup = 0;
 } else {
  spin_unlock_irq(&usbhid->lock);
 }
 mutex_unlock(&hid_open_mut);
}
