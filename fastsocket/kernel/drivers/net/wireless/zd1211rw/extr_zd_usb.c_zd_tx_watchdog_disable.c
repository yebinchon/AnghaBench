
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_tx {int watchdog_work; scalar_t__ watchdog_enabled; } ;
struct zd_usb {struct zd_usb_tx tx; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_dbg_f (int ,char*) ;
 int zd_usb_dev (struct zd_usb*) ;

void zd_tx_watchdog_disable(struct zd_usb *usb)
{
 struct zd_usb_tx *tx = &usb->tx;

 if (tx->watchdog_enabled) {
  dev_dbg_f(zd_usb_dev(usb), "\n");
  tx->watchdog_enabled = 0;
  cancel_delayed_work_sync(&tx->watchdog_work);
 }
}
