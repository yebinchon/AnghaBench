
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl8180_priv {TYPE_1__* rf; } ;
struct ieee80211_conf {int dummy; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int (* set_chan ) (struct ieee80211_hw*,struct ieee80211_conf*) ;} ;


 int stub1 (struct ieee80211_hw*,struct ieee80211_conf*) ;

__attribute__((used)) static int rtl8180_config(struct ieee80211_hw *dev, u32 changed)
{
 struct rtl8180_priv *priv = dev->priv;
 struct ieee80211_conf *conf = &dev->conf;

 priv->rf->set_chan(dev, conf);

 return 0;
}
