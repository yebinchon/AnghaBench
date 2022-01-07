
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct atp {int urb; scalar_t__ open; } ;


 int EIO ;
 int GFP_ATOMIC ;
 struct atp* usb_get_intfdata (struct usb_interface*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int atp_resume(struct usb_interface *iface)
{
 struct atp *dev = usb_get_intfdata(iface);

 if (dev->open && usb_submit_urb(dev->urb, GFP_ATOMIC))
  return -EIO;

 return 0;
}
