
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaweth_device {int rx_urb; int irq_urb; int lowmem_work; int tx_urb; } ;


 int cancel_delayed_work_sync (int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void kaweth_kill_urbs(struct kaweth_device *kaweth)
{
 usb_kill_urb(kaweth->irq_urb);
 usb_kill_urb(kaweth->rx_urb);
 usb_kill_urb(kaweth->tx_urb);

 cancel_delayed_work_sync(&kaweth->lowmem_work);



 usb_kill_urb(kaweth->irq_urb);
 usb_kill_urb(kaweth->rx_urb);
}
