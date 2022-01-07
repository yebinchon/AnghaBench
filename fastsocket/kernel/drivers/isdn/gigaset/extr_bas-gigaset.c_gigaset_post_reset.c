
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int gigaset_resume (struct usb_interface*) ;

__attribute__((used)) static int gigaset_post_reset(struct usb_interface *intf)
{



 return gigaset_resume(intf);
}
