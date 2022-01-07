
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct kbtab {int data_dma; int data; int irq; int dev; } ;


 int input_unregister_device (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct kbtab*) ;
 int usb_buffer_free (int ,int,int ,int ) ;
 int usb_free_urb (int ) ;
 struct kbtab* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void kbtab_disconnect(struct usb_interface *intf)
{
 struct kbtab *kbtab = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));
 if (kbtab) {
  usb_kill_urb(kbtab->irq);
  input_unregister_device(kbtab->dev);
  usb_free_urb(kbtab->irq);
  usb_buffer_free(interface_to_usbdev(intf), 10, kbtab->data, kbtab->data_dma);
  kfree(kbtab);
 }
}
