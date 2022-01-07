
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct adm8211_priv* priv; } ;
struct adm8211_priv {int channel; } ;
struct TYPE_3__ {int center_freq; } ;


 int adm8211_rf_set_channel (struct ieee80211_hw*,int) ;
 int ieee80211_frequency_to_channel (int ) ;

__attribute__((used)) static int adm8211_config(struct ieee80211_hw *dev, u32 changed)
{
 struct adm8211_priv *priv = dev->priv;
 struct ieee80211_conf *conf = &dev->conf;
 int channel =
  ieee80211_frequency_to_channel(conf->chandef.chan->center_freq);

 if (channel != priv->channel) {
  priv->channel = channel;
  adm8211_rf_set_channel(dev, priv->channel);
 }

 return 0;
}
