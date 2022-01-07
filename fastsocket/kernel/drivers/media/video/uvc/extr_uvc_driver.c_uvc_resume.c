
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int __uvc_resume (struct usb_interface*,int ) ;

__attribute__((used)) static int uvc_resume(struct usb_interface *intf)
{
 return __uvc_resume(intf, 0);
}
