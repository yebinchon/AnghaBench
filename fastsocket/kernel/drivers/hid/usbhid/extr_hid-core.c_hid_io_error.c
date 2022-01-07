
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int retry_delay; int lock; int io_retry; int reset_work; int iofl; scalar_t__ stop_retry; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int HID_DISCONNECTED ;
 int HID_RESET_PENDING ;
 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void hid_io_error(struct hid_device *hid)
{
 unsigned long flags;
 struct usbhid_device *usbhid = hid->driver_data;

 spin_lock_irqsave(&usbhid->lock, flags);


 if (test_bit(HID_DISCONNECTED, &usbhid->iofl))
  goto done;



 if (time_after(jiffies, usbhid->stop_retry + HZ/2))
  usbhid->retry_delay = 0;


 if (usbhid->retry_delay == 0) {
  usbhid->retry_delay = 13;
  usbhid->stop_retry = jiffies + msecs_to_jiffies(1000);
 } else if (usbhid->retry_delay < 100)
  usbhid->retry_delay *= 2;

 if (time_after(jiffies, usbhid->stop_retry)) {


  if (!test_and_set_bit(HID_RESET_PENDING, &usbhid->iofl)) {
   schedule_work(&usbhid->reset_work);
   goto done;
  }
 }

 mod_timer(&usbhid->io_retry,
   jiffies + msecs_to_jiffies(usbhid->retry_delay));
done:
 spin_unlock_irqrestore(&usbhid->lock, flags);
}
