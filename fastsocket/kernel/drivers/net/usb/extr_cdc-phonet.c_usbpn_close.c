
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbpn_dev {int active_setting; int usb; struct urb** urbs; TYPE_3__* data_intf; } ;
struct urb {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_4__ {unsigned int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 struct usbpn_dev* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 unsigned int rxq_size ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_set_interface (int ,unsigned int,int) ;

__attribute__((used)) static int usbpn_close(struct net_device *dev)
{
 struct usbpn_dev *pnd = netdev_priv(dev);
 unsigned i;
 unsigned num = pnd->data_intf->cur_altsetting->desc.bInterfaceNumber;

 netif_stop_queue(dev);

 for (i = 0; i < rxq_size; i++) {
  struct urb *req = pnd->urbs[i];

  if (!req)
   continue;
  usb_kill_urb(req);
  usb_free_urb(req);
  pnd->urbs[i] = ((void*)0);
 }

 return usb_set_interface(pnd->usb, num, !pnd->active_setting);
}
