
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct flexcop_usb {int fc_dev; } ;


 int DRIVER_NAME ;
 int flexcop_device_exit (int ) ;
 int flexcop_device_kfree (int ) ;
 int flexcop_usb_exit (struct flexcop_usb*) ;
 int flexcop_usb_transfer_exit (struct flexcop_usb*) ;
 int info (char*,int ) ;
 struct flexcop_usb* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void flexcop_usb_disconnect(struct usb_interface *intf)
{
 struct flexcop_usb *fc_usb = usb_get_intfdata(intf);
 flexcop_usb_transfer_exit(fc_usb);
 flexcop_device_exit(fc_usb->fc_dev);
 flexcop_usb_exit(fc_usb);
 flexcop_device_kfree(fc_usb->fc_dev);
 info("%s successfully deinitialized and disconnected.", DRIVER_NAME);
}
