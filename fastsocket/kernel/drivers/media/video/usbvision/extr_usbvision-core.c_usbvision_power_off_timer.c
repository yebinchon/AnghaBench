
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int power_off_work; int power_off_timer; } ;


 int DBG_FUNC ;
 int INIT_WORK (int *,int ) ;
 int PDEBUG (int ,char*) ;
 int call_usbvision_power_off ;
 int del_timer (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void usbvision_power_off_timer(unsigned long data)
{
 struct usb_usbvision *usbvision = (void *)data;

 PDEBUG(DBG_FUNC, "");
 del_timer(&usbvision->power_off_timer);
 INIT_WORK(&usbvision->power_off_work, call_usbvision_power_off);
 (void) schedule_work(&usbvision->power_off_work);
}
