
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_rx {int idle_work; } ;
struct zd_usb {struct zd_usb_rx rx; } ;


 int ZD_RX_IDLE_INTERVAL ;
 int cancel_delayed_work (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int zd_workqueue ;

void zd_usb_reset_rx_idle_timer(struct zd_usb *usb)
{
 struct zd_usb_rx *rx = &usb->rx;

 cancel_delayed_work(&rx->idle_work);
 queue_delayed_work(zd_workqueue, &rx->idle_work, ZD_RX_IDLE_INTERVAL);
}
