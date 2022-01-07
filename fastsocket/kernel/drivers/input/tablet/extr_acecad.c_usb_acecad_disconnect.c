
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_acecad {int data_dma; int data; int irq; int input; } ;


 int input_unregister_device (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_acecad*) ;
 int usb_buffer_free (int ,int,int ,int ) ;
 int usb_free_urb (int ) ;
 struct usb_acecad* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usb_acecad_disconnect(struct usb_interface *intf)
{
 struct usb_acecad *acecad = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));
 if (acecad) {
  usb_kill_urb(acecad->irq);
  input_unregister_device(acecad->input);
  usb_free_urb(acecad->irq);
  usb_buffer_free(interface_to_usbdev(intf), 10, acecad->data, acecad->data_dma);
  kfree(acecad);
 }
}
