
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int rf; int usb; int mutex; } ;
struct usb_interface {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int memset (struct zd_chip*,int ,int) ;
 int mutex_init (int *) ;
 int zd_rf_init (int *) ;
 int zd_usb_init (int *,struct ieee80211_hw*,struct usb_interface*) ;

void zd_chip_init(struct zd_chip *chip,
          struct ieee80211_hw *hw,
   struct usb_interface *intf)
{
 memset(chip, 0, sizeof(*chip));
 mutex_init(&chip->mutex);
 zd_usb_init(&chip->usb, hw, intf);
 zd_rf_init(&chip->rf);
}
