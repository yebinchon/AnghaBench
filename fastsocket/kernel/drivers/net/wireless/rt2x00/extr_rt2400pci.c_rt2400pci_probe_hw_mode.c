
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hw_mode_spec {struct channel_info* channels_info; int num_channels; int channels; int supported_rates; int supported_bands; } ;
struct rt2x00_dev {TYPE_1__* hw; int dev; struct hw_mode_spec spec; } ;
struct channel_info {void* default_power1; void* max_power; } ;
struct TYPE_3__ {int flags; } ;


 int ARRAY_SIZE (int ) ;
 int EEPROM_MAC_ADDR_0 ;
 int EEPROM_TXPOWER_START ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING ;
 int IEEE80211_HW_PS_NULLFUNC_STACK ;
 int IEEE80211_HW_SIGNAL_DBM ;
 int IEEE80211_HW_SUPPORTS_PS ;
 char MAX_TXPOWER ;
 int SET_IEEE80211_DEV (TYPE_1__*,int ) ;
 int SET_IEEE80211_PERM_ADDR (TYPE_1__*,char*) ;
 int SUPPORT_BAND_2GHZ ;
 int SUPPORT_RATE_CCK ;
 void* TXPOWER_FROM_DEV (char) ;
 struct channel_info* kcalloc (int ,int,int ) ;
 int rf_vals_b ;
 char* rt2x00_eeprom_addr (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt2400pci_probe_hw_mode(struct rt2x00_dev *rt2x00dev)
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
 spec->supported_rates = SUPPORT_RATE_CCK;

 spec->num_channels = ARRAY_SIZE(rf_vals_b);
 spec->channels = rf_vals_b;




 info = kcalloc(spec->num_channels, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 spec->channels_info = info;

 tx_power = rt2x00_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_START);
 for (i = 0; i < 14; i++) {
  info[i].max_power = TXPOWER_FROM_DEV(MAX_TXPOWER);
  info[i].default_power1 = TXPOWER_FROM_DEV(tx_power[i]);
 }

 return 0;
}
