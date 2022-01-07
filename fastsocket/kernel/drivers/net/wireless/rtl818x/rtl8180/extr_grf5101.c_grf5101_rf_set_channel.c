
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rtl8180_priv {TYPE_1__* channels; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct ieee80211_conf {TYPE_3__ chandef; } ;
struct TYPE_5__ {int center_freq; } ;
struct TYPE_4__ {int hw_value; } ;


 int grf5101_write_phy_antenna (struct ieee80211_hw*,int) ;
 int ieee80211_frequency_to_channel (int ) ;
 int write_grf5101 (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void grf5101_rf_set_channel(struct ieee80211_hw *dev,
       struct ieee80211_conf *conf)
{
 struct rtl8180_priv *priv = dev->priv;
 int channel =
  ieee80211_frequency_to_channel(conf->chandef.chan->center_freq);
 u32 txpw = priv->channels[channel - 1].hw_value & 0xFF;
 u32 chan = channel - 1;


 write_grf5101(dev, 0x15, 0x0);
 write_grf5101(dev, 0x06, txpw);
 write_grf5101(dev, 0x15, 0x10);
 write_grf5101(dev, 0x15, 0x0);


 write_grf5101(dev, 0x07, 0x0);
 write_grf5101(dev, 0x0B, chan);
 write_grf5101(dev, 0x07, 0x1000);

 grf5101_write_phy_antenna(dev, channel);
}
