
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_5__ {TYPE_4__* intr_urb; TYPE_3__* rx_urb; int netdev; } ;
typedef TYPE_1__ rtl8150_t ;
struct TYPE_7__ {scalar_t__ actual_length; scalar_t__ status; } ;
struct TYPE_6__ {scalar_t__ actual_length; scalar_t__ status; } ;


 int intr_callback (TYPE_4__*) ;
 int netif_device_attach (int ) ;
 scalar_t__ netif_running (int ) ;
 int read_bulk_callback (TYPE_3__*) ;
 TYPE_1__* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int rtl8150_resume(struct usb_interface *intf)
{
 rtl8150_t *dev = usb_get_intfdata(intf);

 netif_device_attach(dev->netdev);
 if (netif_running(dev->netdev)) {
  dev->rx_urb->status = 0;
  dev->rx_urb->actual_length = 0;
  read_bulk_callback(dev->rx_urb);

  dev->intr_urb->status = 0;
  dev->intr_urb->actual_length = 0;
  intr_callback(dev->intr_urb);
 }
 return 0;
}
