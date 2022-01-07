
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int gspca_disconnect (struct usb_interface*) ;

__attribute__((used)) static void sd_disconnect(struct usb_interface *intf)
{
 gspca_disconnect(intf);
}
