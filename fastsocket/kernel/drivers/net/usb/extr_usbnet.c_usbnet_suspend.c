
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; scalar_t__ qlen; } ;
struct usbnet {int net; TYPE_1__ txq; int flags; int suspend_count; } ;
struct usb_interface {int dummy; } ;
struct TYPE_5__ {int event; } ;
typedef TYPE_2__ pm_message_t ;


 int EBUSY ;
 int EVENT_DEV_ASLEEP ;
 int PM_EVENT_AUTO ;
 int __usbnet_status_stop_force (struct usbnet*) ;
 int netif_device_attach (int ) ;
 int netif_device_detach (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_terminate_urbs (struct usbnet*) ;

int usbnet_suspend (struct usb_interface *intf, pm_message_t message)
{
 struct usbnet *dev = usb_get_intfdata(intf);

 if (!dev->suspend_count++) {
  spin_lock_irq(&dev->txq.lock);

  if (dev->txq.qlen && (message.event & PM_EVENT_AUTO)) {
   spin_unlock_irq(&dev->txq.lock);
   return -EBUSY;
  } else {
   set_bit(EVENT_DEV_ASLEEP, &dev->flags);
   spin_unlock_irq(&dev->txq.lock);
  }




  netif_device_detach (dev->net);
  usbnet_terminate_urbs(dev);
  __usbnet_status_stop_force(dev);





  netif_device_attach (dev->net);
 }
 return 0;
}
