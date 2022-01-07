
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_rx {int setup_mutex; } ;
struct zd_usb {struct zd_usb_rx rx; } ;


 int __zd_usb_enable_rx (struct zd_usb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_usb_reset_rx_idle_timer (struct zd_usb*) ;

int zd_usb_enable_rx(struct zd_usb *usb)
{
 int r;
 struct zd_usb_rx *rx = &usb->rx;

 mutex_lock(&rx->setup_mutex);
 r = __zd_usb_enable_rx(usb);
 mutex_unlock(&rx->setup_mutex);

 zd_usb_reset_rx_idle_timer(usb);

 return r;
}
