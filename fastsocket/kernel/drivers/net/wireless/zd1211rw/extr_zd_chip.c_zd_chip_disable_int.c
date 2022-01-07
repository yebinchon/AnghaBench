
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zd_chip {int mutex; int usb; } ;
struct TYPE_2__ {int process_intr; } ;


 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* zd_chip_to_mac (struct zd_chip*) ;
 int zd_usb_disable_int (int *) ;

void zd_chip_disable_int(struct zd_chip *chip)
{
 mutex_lock(&chip->mutex);
 zd_usb_disable_int(&chip->usb);
 mutex_unlock(&chip->mutex);


 cancel_work_sync(&zd_chip_to_mac(chip)->process_intr);
}
