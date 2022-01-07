
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int mutex; int usb; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_tx_watchdog_disable (int *) ;
 int zd_usb_disable_rx (int *) ;
 int zd_usb_disable_tx (int *) ;

void zd_chip_disable_rxtx(struct zd_chip *chip)
{
 mutex_lock(&chip->mutex);
 zd_tx_watchdog_disable(&chip->usb);
 zd_usb_disable_rx(&chip->usb);
 zd_usb_disable_tx(&chip->usb);
 mutex_unlock(&chip->mutex);
}
