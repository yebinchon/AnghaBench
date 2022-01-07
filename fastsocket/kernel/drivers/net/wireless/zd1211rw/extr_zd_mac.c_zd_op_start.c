
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int initialized; } ;
struct zd_chip {struct zd_usb usb; } ;
struct zd_mac {int flags; struct zd_chip chip; } ;
struct ieee80211_hw {int dummy; } ;


 int CR_RATES_80211B ;
 int CR_RATES_80211G ;
 int ZD_DEVICE_RUNNING ;
 int beacon_enable (struct zd_mac*) ;
 int housekeeping_enable (struct zd_mac*) ;
 int set_bit (int ,int *) ;
 int set_mc_hash (struct zd_mac*) ;
 int set_rx_filter (struct zd_mac*) ;
 int zd_chip_disable_int (struct zd_chip*) ;
 int zd_chip_disable_rxtx (struct zd_chip*) ;
 int zd_chip_enable_hwint (struct zd_chip*) ;
 int zd_chip_enable_int (struct zd_chip*) ;
 int zd_chip_enable_rxtx (struct zd_chip*) ;
 int zd_chip_set_basic_rates (struct zd_chip*,int) ;
 int zd_chip_switch_radio_off (struct zd_chip*) ;
 int zd_chip_switch_radio_on (struct zd_chip*) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 int zd_usb_init_hw (struct zd_usb*) ;

int zd_op_start(struct ieee80211_hw *hw)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 struct zd_chip *chip = &mac->chip;
 struct zd_usb *usb = &chip->usb;
 int r;

 if (!usb->initialized) {
  r = zd_usb_init_hw(usb);
  if (r)
   goto out;
 }

 r = zd_chip_enable_int(chip);
 if (r < 0)
  goto out;

 r = zd_chip_set_basic_rates(chip, CR_RATES_80211B | CR_RATES_80211G);
 if (r < 0)
  goto disable_int;
 r = set_rx_filter(mac);
 if (r)
  goto disable_int;
 r = set_mc_hash(mac);
 if (r)
  goto disable_int;
 r = zd_chip_switch_radio_on(chip);
 if (r < 0)
  goto disable_int;
 r = zd_chip_enable_rxtx(chip);
 if (r < 0)
  goto disable_radio;
 r = zd_chip_enable_hwint(chip);
 if (r < 0)
  goto disable_rxtx;

 housekeeping_enable(mac);
 beacon_enable(mac);
 set_bit(ZD_DEVICE_RUNNING, &mac->flags);
 return 0;
disable_rxtx:
 zd_chip_disable_rxtx(chip);
disable_radio:
 zd_chip_switch_radio_off(chip);
disable_int:
 zd_chip_disable_int(chip);
out:
 return r;
}
