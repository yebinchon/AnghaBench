
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct pegasus {int intr_urb; int rx_urb; int net; int carrier_check; } ;
typedef int pm_message_t ;


 int cancel_delayed_work (int *) ;
 int netif_device_detach (int ) ;
 scalar_t__ netif_running (int ) ;
 struct pegasus* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int pegasus_suspend (struct usb_interface *intf, pm_message_t message)
{
 struct pegasus *pegasus = usb_get_intfdata(intf);

 netif_device_detach (pegasus->net);
 cancel_delayed_work(&pegasus->carrier_check);
 if (netif_running(pegasus->net)) {
  usb_kill_urb(pegasus->rx_urb);
  usb_kill_urb(pegasus->intr_urb);
 }
 return 0;
}
