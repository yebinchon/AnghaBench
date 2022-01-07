
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wireless_dev {TYPE_5__* wiphy; } ;
struct net_device {int dummy; } ;
struct libipw_geo {int bg_channels; int a_channels; TYPE_3__* a; TYPE_2__* bg; } ;
struct ipw_priv {TYPE_1__* pci_dev; TYPE_7__* ieee; int mac_addr; } ;
struct ieee80211_supported_band {size_t band; int n_channels; int n_bitrates; int bitrates; TYPE_4__* channels; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_13__ {struct ieee80211_supported_band a_band; struct ieee80211_supported_band bg_band; struct wireless_dev wdev; } ;
struct TYPE_12__ {int n_cipher_suites; int cipher_suites; struct ieee80211_supported_band** bands; int perm_addr; } ;
struct TYPE_11__ {size_t band; int flags; int max_power; int hw_value; int center_freq; } ;
struct TYPE_10__ {int flags; int max_power; int channel; int freq; } ;
struct TYPE_9__ {int flags; int max_power; int channel; int freq; } ;
struct TYPE_8__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int EIO ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int IEEE80211_CHAN_NO_IBSS ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int IEEE80211_CHAN_RADAR ;
 int LIBIPW_CH_NO_IBSS ;
 int LIBIPW_CH_PASSIVE_ONLY ;
 int LIBIPW_CH_RADAR_DETECT ;
 int ipw2200_a_rates ;
 int ipw2200_bg_rates ;
 int ipw2200_num_a_rates ;
 int ipw2200_num_bg_rates ;
 int ipw_cipher_suites ;
 void* kcalloc (int,int,int ) ;
 struct libipw_geo* libipw_get_geo (TYPE_7__*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int set_wiphy_dev (TYPE_5__*,int *) ;
 scalar_t__ wiphy_register (TYPE_5__*) ;

__attribute__((used)) static int ipw_wdev_init(struct net_device *dev)
{
 int i, rc = 0;
 struct ipw_priv *priv = libipw_priv(dev);
 const struct libipw_geo *geo = libipw_get_geo(priv->ieee);
 struct wireless_dev *wdev = &priv->ieee->wdev;

 memcpy(wdev->wiphy->perm_addr, priv->mac_addr, ETH_ALEN);


 if (geo->bg_channels) {
  struct ieee80211_supported_band *bg_band = &priv->ieee->bg_band;

  bg_band->band = IEEE80211_BAND_2GHZ;
  bg_band->n_channels = geo->bg_channels;
  bg_band->channels = kcalloc(geo->bg_channels,
         sizeof(struct ieee80211_channel),
         GFP_KERNEL);
  if (!bg_band->channels) {
   rc = -ENOMEM;
   goto out;
  }

  for (i = 0; i < geo->bg_channels; i++) {
   bg_band->channels[i].band = IEEE80211_BAND_2GHZ;
   bg_band->channels[i].center_freq = geo->bg[i].freq;
   bg_band->channels[i].hw_value = geo->bg[i].channel;
   bg_band->channels[i].max_power = geo->bg[i].max_power;
   if (geo->bg[i].flags & LIBIPW_CH_PASSIVE_ONLY)
    bg_band->channels[i].flags |=
     IEEE80211_CHAN_PASSIVE_SCAN;
   if (geo->bg[i].flags & LIBIPW_CH_NO_IBSS)
    bg_band->channels[i].flags |=
     IEEE80211_CHAN_NO_IBSS;
   if (geo->bg[i].flags & LIBIPW_CH_RADAR_DETECT)
    bg_band->channels[i].flags |=
     IEEE80211_CHAN_RADAR;



  }

  bg_band->bitrates = ipw2200_bg_rates;
  bg_band->n_bitrates = ipw2200_num_bg_rates;

  wdev->wiphy->bands[IEEE80211_BAND_2GHZ] = bg_band;
 }


 if (geo->a_channels) {
  struct ieee80211_supported_band *a_band = &priv->ieee->a_band;

  a_band->band = IEEE80211_BAND_5GHZ;
  a_band->n_channels = geo->a_channels;
  a_band->channels = kcalloc(geo->a_channels,
        sizeof(struct ieee80211_channel),
        GFP_KERNEL);
  if (!a_band->channels) {
   rc = -ENOMEM;
   goto out;
  }

  for (i = 0; i < geo->a_channels; i++) {
   a_band->channels[i].band = IEEE80211_BAND_5GHZ;
   a_band->channels[i].center_freq = geo->a[i].freq;
   a_band->channels[i].hw_value = geo->a[i].channel;
   a_band->channels[i].max_power = geo->a[i].max_power;
   if (geo->a[i].flags & LIBIPW_CH_PASSIVE_ONLY)
    a_band->channels[i].flags |=
     IEEE80211_CHAN_PASSIVE_SCAN;
   if (geo->a[i].flags & LIBIPW_CH_NO_IBSS)
    a_band->channels[i].flags |=
     IEEE80211_CHAN_NO_IBSS;
   if (geo->a[i].flags & LIBIPW_CH_RADAR_DETECT)
    a_band->channels[i].flags |=
     IEEE80211_CHAN_RADAR;



  }

  a_band->bitrates = ipw2200_a_rates;
  a_band->n_bitrates = ipw2200_num_a_rates;

  wdev->wiphy->bands[IEEE80211_BAND_5GHZ] = a_band;
 }

 wdev->wiphy->cipher_suites = ipw_cipher_suites;
 wdev->wiphy->n_cipher_suites = ARRAY_SIZE(ipw_cipher_suites);

 set_wiphy_dev(wdev->wiphy, &priv->pci_dev->dev);


 if (wiphy_register(wdev->wiphy))
  rc = -EIO;
out:
 return rc;
}
