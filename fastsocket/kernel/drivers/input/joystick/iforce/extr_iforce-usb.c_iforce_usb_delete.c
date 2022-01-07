
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iforce {int ctrl; int out; int irq; } ;


 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

void iforce_usb_delete(struct iforce* iforce)
{
 usb_kill_urb(iforce->irq);
 usb_kill_urb(iforce->out);
 usb_kill_urb(iforce->ctrl);

 usb_free_urb(iforce->irq);
 usb_free_urb(iforce->out);
 usb_free_urb(iforce->ctrl);
}
