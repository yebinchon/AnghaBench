
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int context; } ;


 int kfree (int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void nc_flush_complete(struct urb *urb)
{
 kfree(urb->context);
 usb_free_urb(urb);
}
