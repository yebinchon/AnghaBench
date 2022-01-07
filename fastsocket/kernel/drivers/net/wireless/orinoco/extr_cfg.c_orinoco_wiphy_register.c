
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int max_scan_ssids; int n_cipher_suites; int retry_long; int retry_short; scalar_t__ frag_threshold; int rts_threshold; int * cipher_suites; int signal_type; TYPE_2__** bands; int interface_modes; } ;
struct TYPE_4__ {int n_channels; int channels; int n_bitrates; int bitrates; } ;
struct orinoco_private {scalar_t__ firmware_type; int channel_mask; int long_retry_limit; int short_retry_limit; scalar_t__ frag_thresh; int has_mwo; int rts_thresh; int * cipher_suites; scalar_t__ has_wpa; scalar_t__ has_big_wep; scalar_t__ has_wep; TYPE_2__ band; TYPE_1__* channels; int broken_monitor; scalar_t__ has_ibss; } ;
struct TYPE_3__ {int center_freq; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int ) ;
 int CFG80211_SIGNAL_TYPE_MBM ;
 scalar_t__ FIRMWARE_TYPE_AGERE ;
 size_t IEEE80211_BAND_2GHZ ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_MONITOR ;
 int NL80211_IFTYPE_STATION ;
 int NUM_CHANNELS ;
 int WLAN_CIPHER_SUITE_TKIP ;
 int WLAN_CIPHER_SUITE_WEP104 ;
 int WLAN_CIPHER_SUITE_WEP40 ;
 scalar_t__ force_monitor ;
 int ieee80211_dsss_chan_to_freq (int) ;
 int orinoco_rates ;
 struct orinoco_private* wiphy_priv (struct wiphy*) ;
 int wiphy_register (struct wiphy*) ;

int orinoco_wiphy_register(struct wiphy *wiphy)
{
 struct orinoco_private *priv = wiphy_priv(wiphy);
 int i, channels = 0;

 if (priv->firmware_type == FIRMWARE_TYPE_AGERE)
  wiphy->max_scan_ssids = 1;
 else
  wiphy->max_scan_ssids = 0;

 wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION);




 if (priv->has_ibss)
  wiphy->interface_modes |= BIT(NL80211_IFTYPE_ADHOC);

 if (!priv->broken_monitor || force_monitor)
  wiphy->interface_modes |= BIT(NL80211_IFTYPE_MONITOR);

 priv->band.bitrates = orinoco_rates;
 priv->band.n_bitrates = ARRAY_SIZE(orinoco_rates);


 for (i = 0; i < NUM_CHANNELS; i++) {
  if (priv->channel_mask & (1 << i)) {
   priv->channels[i].center_freq =
    ieee80211_dsss_chan_to_freq(i + 1);
   channels++;
  }
 }
 priv->band.channels = priv->channels;
 priv->band.n_channels = channels;

 wiphy->bands[IEEE80211_BAND_2GHZ] = &priv->band;
 wiphy->signal_type = CFG80211_SIGNAL_TYPE_MBM;

 i = 0;
 if (priv->has_wep) {
  priv->cipher_suites[i] = WLAN_CIPHER_SUITE_WEP40;
  i++;

  if (priv->has_big_wep) {
   priv->cipher_suites[i] = WLAN_CIPHER_SUITE_WEP104;
   i++;
  }
 }
 if (priv->has_wpa) {
  priv->cipher_suites[i] = WLAN_CIPHER_SUITE_TKIP;
  i++;
 }
 wiphy->cipher_suites = priv->cipher_suites;
 wiphy->n_cipher_suites = i;

 wiphy->rts_threshold = priv->rts_thresh;
 if (!priv->has_mwo)
  wiphy->frag_threshold = priv->frag_thresh + 1;
 wiphy->retry_short = priv->short_retry_limit;
 wiphy->retry_long = priv->long_retry_limit;

 return wiphy_register(wiphy);
}
