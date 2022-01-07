
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct catc {int netdev; int irq_urb; int rx_urb; int tx_urb; int ctrl_urb; } ;


 int free_netdev (int ) ;
 int unregister_netdev (int ) ;
 int usb_free_urb (int ) ;
 struct catc* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void catc_disconnect(struct usb_interface *intf)
{
 struct catc *catc = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));
 if (catc) {
  unregister_netdev(catc->netdev);
  usb_free_urb(catc->ctrl_urb);
  usb_free_urb(catc->tx_urb);
  usb_free_urb(catc->rx_urb);
  usb_free_urb(catc->irq_urb);
  free_netdev(catc->netdev);
 }
}
