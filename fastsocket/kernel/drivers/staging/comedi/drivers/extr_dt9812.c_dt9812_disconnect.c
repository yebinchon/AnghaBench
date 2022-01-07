
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int minor; int dev; } ;
struct usb_dt9812 {int kref; TYPE_1__* slot; } ;
struct TYPE_2__ {int mutex; int * usb; } ;


 int dev_info (int *,char*,int) ;
 int down (int *) ;
 int dt9812_delete ;
 int dt9812_mutex ;
 int kref_put (int *,int ) ;
 int up (int *) ;
 struct usb_dt9812* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void dt9812_disconnect(struct usb_interface *interface)
{
 struct usb_dt9812 *dev;
 int minor = interface->minor;

 down(&dt9812_mutex);
 dev = usb_get_intfdata(interface);
 if (dev->slot) {
  down(&dev->slot->mutex);
  dev->slot->usb = ((void*)0);
  up(&dev->slot->mutex);
  dev->slot = ((void*)0);
 }
 usb_set_intfdata(interface, ((void*)0));
 up(&dt9812_mutex);


 kref_put(&dev->kref, dt9812_delete);

 dev_info(&interface->dev, "USB Dt9812 #%d now disconnected\n", minor);
}
