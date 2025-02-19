
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hw_mode_spec {int supported_rates; int num_channels; struct channel_info* channels_info; void* channels; int supported_bands; } ;
struct rt2x00_dev {TYPE_1__* hw; int dev; struct hw_mode_spec spec; } ;
struct channel_info {int default_power1; void* max_power; } ;
struct TYPE_3__ {int flags; } ;


 void* ARRAY_SIZE (void*) ;
 int DEFAULT_TXPOWER ;
 int EEPROM_MAC_ADDR_0 ;
 int EEPROM_TXPOWER_START ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING ;
 int IEEE80211_HW_PS_NULLFUNC_STACK ;
 int IEEE80211_HW_SIGNAL_DBM ;
 int IEEE80211_HW_SUPPORTS_PS ;
 void* MAX_TXPOWER ;
 int RF2522 ;
 int RF2523 ;
 int RF2524 ;
 int RF2525 ;
 int RF2525E ;
 int RF5222 ;
 int SET_IEEE80211_DEV (TYPE_1__*,int ) ;
 int SET_IEEE80211_PERM_ADDR (TYPE_1__*,char*) ;
 int SUPPORT_BAND_2GHZ ;
 int SUPPORT_BAND_5GHZ ;
 int SUPPORT_RATE_CCK ;
 int SUPPORT_RATE_OFDM ;
 int TXPOWER_FROM_DEV (char) ;
 struct channel_info* kcalloc (int,int,int ) ;
 void* rf_vals_5222 ;
 void* rf_vals_bg_2522 ;
 void* rf_vals_bg_2523 ;
 void* rf_vals_bg_2524 ;
 void* rf_vals_bg_2525 ;
 void* rf_vals_bg_2525e ;
 char* rt2x00_eeprom_addr (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt2500pci_probe_hw_mode(struct rt2x00_dev *rt2x00dev)
{
 struct hw_mode_spec *spec = &rt2x00dev->spec;
 struct channel_info *info;
 char *tx_power;
 unsigned int i;




 rt2x00dev->hw->flags = IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING |
          IEEE80211_HW_SIGNAL_DBM |
          IEEE80211_HW_SUPPORTS_PS |
          IEEE80211_HW_PS_NULLFUNC_STACK;

 SET_IEEE80211_DEV(rt2x00dev->hw, rt2x00dev->dev);
 SET_IEEE80211_PERM_ADDR(rt2x00dev->hw,
    rt2x00_eeprom_addr(rt2x00dev,
         EEPROM_MAC_ADDR_0));




 spec->supported_bands = SUPPORT_BAND_2GHZ;
 spec->supported_rates = SUPPORT_RATE_CCK | SUPPORT_RATE_OFDM;

 if (rt2x00_rf(rt2x00dev, RF2522)) {
  spec->num_channels = ARRAY_SIZE(rf_vals_bg_2522);
  spec->channels = rf_vals_bg_2522;
 } else if (rt2x00_rf(rt2x00dev, RF2523)) {
  spec->num_channels = ARRAY_SIZE(rf_vals_bg_2523);
  spec->channels = rf_vals_bg_2523;
 } else if (rt2x00_rf(rt2x00dev, RF2524)) {
  spec->num_channels = ARRAY_SIZE(rf_vals_bg_2524);
  spec->channels = rf_vals_bg_2524;
 } else if (rt2x00_rf(rt2x00dev, RF2525)) {
  spec->num_channels = ARRAY_SIZE(rf_vals_bg_2525);
  spec->channels = rf_vals_bg_2525;
 } else if (rt2x00_rf(rt2x00dev, RF2525E)) {
  spec->num_channels = ARRAY_SIZE(rf_vals_bg_2525e);
  spec->channels = rf_vals_bg_2525e;
 } else if (rt2x00_rf(rt2x00dev, RF5222)) {
  spec->supported_bands |= SUPPORT_BAND_5GHZ;
  spec->num_channels = ARRAY_SIZE(rf_vals_5222);
  spec->channels = rf_vals_5222;
 }




 info = kcalloc(spec->num_channels, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 spec->channels_info = info;

 tx_power = rt2x00_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_START);
 for (i = 0; i < 14; i++) {
  info[i].max_power = MAX_TXPOWER;
  info[i].default_power1 = TXPOWER_FROM_DEV(tx_power[i]);
 }

 if (spec->num_channels > 14) {
  for (i = 14; i < spec->num_channels; i++) {
   info[i].max_power = MAX_TXPOWER;
   info[i].default_power1 = DEFAULT_TXPOWER;
  }
 }

 return 0;
}
