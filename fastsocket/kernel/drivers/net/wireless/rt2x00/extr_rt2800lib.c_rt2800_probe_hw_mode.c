
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int rf; } ;
struct TYPE_9__ {int tx_params; int* rx_mask; } ;
struct TYPE_10__ {int ht_supported; int cap; int ampdu_factor; int ampdu_density; TYPE_3__ mcs; } ;
struct hw_mode_spec {int supported_rates; int num_channels; struct channel_info* channels_info; TYPE_4__ ht; void* channels; int supported_bands; } ;
struct rt2x00_dev {int cap_flags; TYPE_1__ chip; TYPE_5__* hw; int dev; struct hw_mode_spec spec; } ;
struct channel_info {char default_power1; char default_power2; } ;
struct TYPE_11__ {int flags; int max_rates; int max_report_rates; int max_rate_tries; TYPE_2__* wiphy; } ;
struct TYPE_8__ {int flags; } ;


 void* ARRAY_SIZE (void*) ;
 int CAPABILITY_VCO_RECALIBRATION ;
 int EEPROM_MAC_ADDR_0 ;
 int EEPROM_NIC_CONF0 ;
 int EEPROM_NIC_CONF0_RXPATH ;
 int EEPROM_NIC_CONF0_TXPATH ;
 int EEPROM_TXPOWER_A1 ;
 int EEPROM_TXPOWER_A2 ;
 int EEPROM_TXPOWER_BG1 ;
 int EEPROM_TXPOWER_BG2 ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_HT_CAP_GRN_FLD ;
 int IEEE80211_HT_CAP_RX_STBC_SHIFT ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_HT_CAP_TX_STBC ;
 int IEEE80211_HT_MCS_TX_DEFINED ;
 int IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT ;
 int IEEE80211_HT_MCS_TX_RX_DIFF ;
 int IEEE80211_HW_AMPDU_AGGREGATION ;
 int IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING ;
 int IEEE80211_HW_PS_NULLFUNC_STACK ;
 int IEEE80211_HW_REPORTS_TX_ACK_STATUS ;
 int IEEE80211_HW_SIGNAL_DBM ;
 int IEEE80211_HW_SUPPORTS_HT_CCK_RATES ;
 int IEEE80211_HW_SUPPORTS_PS ;
 int MAC_DEBUG_INDEX ;
 int MAC_DEBUG_INDEX_XTAL ;

 int RF2720 ;
 int RF2750 ;
 int RF2820 ;
 int RF2850 ;






 int RF3322 ;





 int RF5592 ;
 int SET_IEEE80211_DEV (TYPE_5__*,int ) ;
 int SET_IEEE80211_PERM_ADDR (TYPE_5__*,char*) ;
 int SUPPORT_BAND_2GHZ ;
 int SUPPORT_BAND_5GHZ ;
 int SUPPORT_RATE_CCK ;
 int SUPPORT_RATE_OFDM ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WIPHY_FLAG_PS_ON_BY_DEFAULT ;
 int __set_bit (int ,int *) ;
 struct channel_info* kcalloc (int,int,int ) ;
 void* rf_vals ;
 void* rf_vals_3x ;
 void* rf_vals_5592_xtal20 ;
 void* rf_vals_5592_xtal40 ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 char* rt2x00_eeprom_addr (struct rt2x00_dev*,int ) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00_get_field16 (int ,int ) ;
 scalar_t__ rt2x00_get_field32 (int ,int ) ;
 scalar_t__ rt2x00_is_pci (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_is_soc (struct rt2x00_dev*) ;
 int rt2x00_is_usb (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int) ;

__attribute__((used)) static int rt2800_probe_hw_mode(struct rt2x00_dev *rt2x00dev)
{
 struct hw_mode_spec *spec = &rt2x00dev->spec;
 struct channel_info *info;
 char *default_power1;
 char *default_power2;
 unsigned int i;
 u16 eeprom;
 u32 reg;




 if (rt2x00_is_pci(rt2x00dev) || rt2x00_is_soc(rt2x00dev))
  rt2x00dev->hw->wiphy->flags &= ~WIPHY_FLAG_PS_ON_BY_DEFAULT;




 rt2x00dev->hw->flags =
     IEEE80211_HW_SIGNAL_DBM |
     IEEE80211_HW_SUPPORTS_PS |
     IEEE80211_HW_PS_NULLFUNC_STACK |
     IEEE80211_HW_AMPDU_AGGREGATION |
     IEEE80211_HW_REPORTS_TX_ACK_STATUS |
     IEEE80211_HW_SUPPORTS_HT_CCK_RATES;
 if (!rt2x00_is_usb(rt2x00dev))
  rt2x00dev->hw->flags |=
   IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING;

 SET_IEEE80211_DEV(rt2x00dev->hw, rt2x00dev->dev);
 SET_IEEE80211_PERM_ADDR(rt2x00dev->hw,
    rt2x00_eeprom_addr(rt2x00dev,
         EEPROM_MAC_ADDR_0));
 rt2x00dev->hw->max_rates = 1;
 rt2x00dev->hw->max_report_rates = 7;
 rt2x00dev->hw->max_rate_tries = 1;

 rt2x00_eeprom_read(rt2x00dev, EEPROM_NIC_CONF0, &eeprom);




 spec->supported_bands = SUPPORT_BAND_2GHZ;
 spec->supported_rates = SUPPORT_RATE_CCK | SUPPORT_RATE_OFDM;

 if (rt2x00_rf(rt2x00dev, RF2820) ||
     rt2x00_rf(rt2x00dev, RF2720)) {
  spec->num_channels = 14;
  spec->channels = rf_vals;
 } else if (rt2x00_rf(rt2x00dev, RF2850) ||
     rt2x00_rf(rt2x00dev, RF2750)) {
  spec->supported_bands |= SUPPORT_BAND_5GHZ;
  spec->num_channels = ARRAY_SIZE(rf_vals);
  spec->channels = rf_vals;
 } else if (rt2x00_rf(rt2x00dev, 138) ||
     rt2x00_rf(rt2x00dev, 139) ||
     rt2x00_rf(rt2x00dev, 137) ||
     rt2x00_rf(rt2x00dev, 136) ||
     rt2x00_rf(rt2x00dev, 134) ||
     rt2x00_rf(rt2x00dev, 133) ||
     rt2x00_rf(rt2x00dev, RF3322) ||
     rt2x00_rf(rt2x00dev, 132) ||
     rt2x00_rf(rt2x00dev, 131) ||
     rt2x00_rf(rt2x00dev, 130) ||
     rt2x00_rf(rt2x00dev, 129) ||
     rt2x00_rf(rt2x00dev, 128)) {
  spec->num_channels = 14;
  spec->channels = rf_vals_3x;
 } else if (rt2x00_rf(rt2x00dev, 135)) {
  spec->supported_bands |= SUPPORT_BAND_5GHZ;
  spec->num_channels = ARRAY_SIZE(rf_vals_3x);
  spec->channels = rf_vals_3x;
 } else if (rt2x00_rf(rt2x00dev, RF5592)) {
  spec->supported_bands |= SUPPORT_BAND_5GHZ;

  rt2800_register_read(rt2x00dev, MAC_DEBUG_INDEX, &reg);
  if (rt2x00_get_field32(reg, MAC_DEBUG_INDEX_XTAL)) {
   spec->num_channels = ARRAY_SIZE(rf_vals_5592_xtal40);
   spec->channels = rf_vals_5592_xtal40;
  } else {
   spec->num_channels = ARRAY_SIZE(rf_vals_5592_xtal20);
   spec->channels = rf_vals_5592_xtal20;
  }
 }

 if (WARN_ON_ONCE(!spec->channels))
  return -ENODEV;




 if (!rt2x00_rf(rt2x00dev, 139))
  spec->ht.ht_supported = 1;
 else
  spec->ht.ht_supported = 0;

 spec->ht.cap =
     IEEE80211_HT_CAP_SUP_WIDTH_20_40 |
     IEEE80211_HT_CAP_GRN_FLD |
     IEEE80211_HT_CAP_SGI_20 |
     IEEE80211_HT_CAP_SGI_40;

 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_TXPATH) >= 2)
  spec->ht.cap |= IEEE80211_HT_CAP_TX_STBC;

 spec->ht.cap |=
     rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_RXPATH) <<
  IEEE80211_HT_CAP_RX_STBC_SHIFT;

 spec->ht.ampdu_factor = 3;
 spec->ht.ampdu_density = 4;
 spec->ht.mcs.tx_params =
     IEEE80211_HT_MCS_TX_DEFINED |
     IEEE80211_HT_MCS_TX_RX_DIFF |
     ((rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_TXPATH) - 1) <<
  IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT);

 switch (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_RXPATH)) {
 case 3:
  spec->ht.mcs.rx_mask[2] = 0xff;
 case 2:
  spec->ht.mcs.rx_mask[1] = 0xff;
 case 1:
  spec->ht.mcs.rx_mask[0] = 0xff;
  spec->ht.mcs.rx_mask[4] = 0x1;
  break;
 }




 info = kcalloc(spec->num_channels, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 spec->channels_info = info;

 default_power1 = rt2x00_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_BG1);
 default_power2 = rt2x00_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_BG2);

 for (i = 0; i < 14; i++) {
  info[i].default_power1 = default_power1[i];
  info[i].default_power2 = default_power2[i];
 }

 if (spec->num_channels > 14) {
  default_power1 = rt2x00_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_A1);
  default_power2 = rt2x00_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_A2);

  for (i = 14; i < spec->num_channels; i++) {
   info[i].default_power1 = default_power1[i - 14];
   info[i].default_power2 = default_power2[i - 14];
  }
 }

 switch (rt2x00dev->chip.rf) {
 case 139:
 case 138:
 case 137:
 case 136:
 case 133:
 case 135:
 case 134:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  __set_bit(CAPABILITY_VCO_RECALIBRATION, &rt2x00dev->cap_flags);
  break;
 }

 return 0;
}
