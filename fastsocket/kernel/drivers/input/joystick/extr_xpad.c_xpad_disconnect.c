
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {scalar_t__ xtype; int idata_dma; int idata; int udev; int irq_in; int bulk_out; int dev; } ;
struct usb_interface {int dummy; } ;


 int XPAD_PKT_LEN ;
 scalar_t__ XTYPE_XBOX360W ;
 int input_unregister_device (int ) ;
 int kfree (struct usb_xpad*) ;
 int usb_buffer_free (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct usb_xpad* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int xpad_deinit_output (struct usb_xpad*) ;
 int xpad_led_disconnect (struct usb_xpad*) ;

__attribute__((used)) static void xpad_disconnect(struct usb_interface *intf)
{
 struct usb_xpad *xpad = usb_get_intfdata (intf);

 usb_set_intfdata(intf, ((void*)0));
 if (xpad) {
  xpad_led_disconnect(xpad);
  input_unregister_device(xpad->dev);
  xpad_deinit_output(xpad);
  if (xpad->xtype == XTYPE_XBOX360W) {
   usb_kill_urb(xpad->bulk_out);
   usb_free_urb(xpad->bulk_out);
   usb_kill_urb(xpad->irq_in);
  }
  usb_free_urb(xpad->irq_in);
  usb_buffer_free(xpad->udev, XPAD_PKT_LEN,
    xpad->idata, xpad->idata_dma);
  kfree(xpad);
 }
}
