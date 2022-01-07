
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;
struct urb {int actual_length; int* transfer_buffer; } ;


 int EVENT_LINK_RESET ;
 int devdbg (struct usbnet*,char*,int) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int usbnet_defer_kevent (struct usbnet*,int ) ;

__attribute__((used)) static void dm9601_status(struct usbnet *dev, struct urb *urb)
{
 int link;
 u8 *buf;
 if (urb->actual_length < 8)
  return;

 buf = urb->transfer_buffer;

 link = !!(buf[0] & 0x40);
 if (netif_carrier_ok(dev->net) != link) {
  if (link) {
   netif_carrier_on(dev->net);
   usbnet_defer_kevent (dev, EVENT_LINK_RESET);
  }
  else
   netif_carrier_off(dev->net);
  devdbg(dev, "Link Status is: %d", link);
 }
}
