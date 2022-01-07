
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {struct wacom* wacom_wac; int data_dma; int data; int irq; int dev; } ;
struct usb_interface {int dummy; } ;


 int WACOM_PKGLEN_MAX ;
 int input_unregister_device (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct wacom*) ;
 int usb_buffer_free (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct wacom* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wacom_destroy_leds (struct wacom*) ;
 int wacom_remove_shared_data (struct wacom*) ;

__attribute__((used)) static void wacom_disconnect(struct usb_interface *intf)
{
 struct wacom *wacom = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));

 usb_kill_urb(wacom->irq);
 input_unregister_device(wacom->dev);
 wacom_destroy_leds(wacom);
 usb_free_urb(wacom->irq);
 usb_buffer_free(interface_to_usbdev(intf), WACOM_PKGLEN_MAX,
   wacom->wacom_wac->data, wacom->data_dma);
 wacom_remove_shared_data(wacom->wacom_wac);
 kfree(wacom->wacom_wac);
 kfree(wacom);
}
