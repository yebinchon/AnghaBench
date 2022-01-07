
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int wacom_resume (struct usb_interface*) ;

__attribute__((used)) static int wacom_reset_resume(struct usb_interface *intf)
{
 return wacom_resume(intf);
}
