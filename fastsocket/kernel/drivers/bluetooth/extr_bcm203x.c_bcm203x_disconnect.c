
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct bcm203x_data {struct bcm203x_data* buffer; struct bcm203x_data* fw_data; int urb; } ;


 int BT_DBG (char*,struct usb_interface*) ;
 int kfree (struct bcm203x_data*) ;
 int usb_free_urb (int ) ;
 struct bcm203x_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void bcm203x_disconnect(struct usb_interface *intf)
{
 struct bcm203x_data *data = usb_get_intfdata(intf);

 BT_DBG("intf %p", intf);

 usb_kill_urb(data->urb);

 usb_set_intfdata(intf, ((void*)0));

 usb_free_urb(data->urb);
 kfree(data->fw_data);
 kfree(data->buffer);
 kfree(data);
}
