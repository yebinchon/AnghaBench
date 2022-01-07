
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct catc {int ctrl_urb; int irq_urb; int tx_urb; int rx_urb; int timer; int is_f5u011; } ;


 int del_timer_sync (int *) ;
 struct catc* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int catc_stop(struct net_device *netdev)
{
 struct catc *catc = netdev_priv(netdev);

 netif_stop_queue(netdev);

 if (!catc->is_f5u011)
  del_timer_sync(&catc->timer);

 usb_kill_urb(catc->rx_urb);
 usb_kill_urb(catc->tx_urb);
 usb_kill_urb(catc->irq_urb);
 usb_kill_urb(catc->ctrl_urb);

 return 0;
}
