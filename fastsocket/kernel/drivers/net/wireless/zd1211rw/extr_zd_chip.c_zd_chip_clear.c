
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int mutex; int rf; int usb; } ;


 int ZD_ASSERT (int) ;
 int ZD_MEMCLEAR (struct zd_chip*,int) ;
 int mutex_destroy (int *) ;
 int mutex_is_locked (int *) ;
 int zd_rf_clear (int *) ;
 int zd_usb_clear (int *) ;

void zd_chip_clear(struct zd_chip *chip)
{
 ZD_ASSERT(!mutex_is_locked(&chip->mutex));
 zd_usb_clear(&chip->usb);
 zd_rf_clear(&chip->rf);
 mutex_destroy(&chip->mutex);
 ZD_MEMCLEAR(chip, sizeof(*chip));
}
