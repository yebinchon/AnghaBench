
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct gtco {int buf_dma; int buffer; int usbdev; int urbinfo; int inputdevice; } ;


 int REPORT_MAX_SIZE ;
 int dev_info (int *,char*) ;
 int input_unregister_device (int ) ;
 int kfree (struct gtco*) ;
 int usb_buffer_free (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct gtco* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void gtco_disconnect(struct usb_interface *interface)
{

 struct gtco *gtco = usb_get_intfdata(interface);


 if (gtco) {
  input_unregister_device(gtco->inputdevice);
  usb_kill_urb(gtco->urbinfo);
  usb_free_urb(gtco->urbinfo);
  usb_buffer_free(gtco->usbdev, REPORT_MAX_SIZE,
    gtco->buffer, gtco->buf_dma);
  kfree(gtco);
 }

 dev_info(&interface->dev, "gtco driver disconnected\n");
}
