
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct urb {int actual_length; struct ax88172_int_data* transfer_buffer; } ;
struct ax88172_int_data {int link; } ;


 int EVENT_LINK_RESET ;
 int devdbg (struct usbnet*,char*,int) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int usbnet_defer_kevent (struct usbnet*,int ) ;

__attribute__((used)) static void asix_status(struct usbnet *dev, struct urb *urb)
{
 struct ax88172_int_data *event;
 int link;

 if (urb->actual_length < 8)
  return;

 event = urb->transfer_buffer;
 link = event->link & 0x01;
 if (netif_carrier_ok(dev->net) != link) {
  if (link) {
   netif_carrier_on(dev->net);
   usbnet_defer_kevent (dev, EVENT_LINK_RESET );
  } else
   netif_carrier_off(dev->net);
  devdbg(dev, "Link Status is: %d", link);
 }
}
