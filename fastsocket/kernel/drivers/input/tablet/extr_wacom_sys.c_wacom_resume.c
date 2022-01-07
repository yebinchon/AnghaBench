
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_features {int dummy; } ;
struct wacom {int lock; int irq; scalar_t__ open; TYPE_1__* wacom_wac; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {struct wacom_features* features; } ;


 int EIO ;
 int GFP_NOIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wacom* usb_get_intfdata (struct usb_interface*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;
 int wacom_led_control (struct wacom*) ;
 int wacom_query_tablet_data (struct usb_interface*,struct wacom_features*) ;
 int wacom_retrieve_hid_descriptor (struct usb_interface*,struct wacom_features*) ;

__attribute__((used)) static int wacom_resume(struct usb_interface *intf)
{
 struct wacom *wacom = usb_get_intfdata(intf);
 struct wacom_features *features = wacom->wacom_wac->features;
 int rv = 0;

 mutex_lock(&wacom->lock);


 if (!wacom_retrieve_hid_descriptor(intf, features))
  wacom_query_tablet_data(intf, features);
 wacom_led_control(wacom);

 if (wacom->open && usb_submit_urb(wacom->irq, GFP_NOIO) < 0)
  rv = -EIO;

 mutex_unlock(&wacom->lock);

 return rv;
}
