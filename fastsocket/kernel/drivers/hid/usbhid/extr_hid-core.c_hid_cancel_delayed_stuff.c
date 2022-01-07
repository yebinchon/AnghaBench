
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int reset_work; int restart_work; int io_retry; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void hid_cancel_delayed_stuff(struct usbhid_device *usbhid)
{
 del_timer_sync(&usbhid->io_retry);
 cancel_work_sync(&usbhid->restart_work);
 cancel_work_sync(&usbhid->reset_work);
}
