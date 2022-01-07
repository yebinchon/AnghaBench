
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {int lock; int irq; } ;
struct usb_interface {int dummy; } ;
typedef int pm_message_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wacom* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int wacom_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct wacom *wacom = usb_get_intfdata(intf);

 mutex_lock(&wacom->lock);
 usb_kill_urb(wacom->irq);
 mutex_unlock(&wacom->lock);

 return 0;
}
