
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; scalar_t__ hard_mtu; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int * netdev_ops; scalar_t__ hard_header_len; scalar_t__ mtu; } ;


 scalar_t__ INT51X1_HEADER_SIZE ;
 int int51x1_netdev_ops ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;
 int usbnet_get_ethernet_addr (struct usbnet*,int) ;

__attribute__((used)) static int int51x1_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int status = usbnet_get_ethernet_addr(dev, 3);

 if (status)
  return status;

 dev->net->hard_header_len += INT51X1_HEADER_SIZE;
 dev->hard_mtu = dev->net->mtu + dev->net->hard_header_len;
 dev->net->netdev_ops = &int51x1_netdev_ops;

 return usbnet_get_endpoints(dev, intf);
}
