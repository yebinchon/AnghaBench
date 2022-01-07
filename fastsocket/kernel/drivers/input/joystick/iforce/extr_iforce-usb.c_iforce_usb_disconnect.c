
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct iforce {int dev; int * usbdev; } ;


 int iforce_delete_device (struct iforce*) ;
 int input_unregister_device (int ) ;
 int kfree (struct iforce*) ;
 struct iforce* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void iforce_usb_disconnect(struct usb_interface *intf)
{
 struct iforce *iforce = usb_get_intfdata(intf);
 int open = 0;

 usb_set_intfdata(intf, ((void*)0));
 if (iforce) {
  iforce->usbdev = ((void*)0);
  input_unregister_device(iforce->dev);

  if (!open) {
   iforce_delete_device(iforce);
   kfree(iforce);
  }
 }
}
