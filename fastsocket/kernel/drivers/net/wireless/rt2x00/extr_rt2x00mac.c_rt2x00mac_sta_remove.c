
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_sta {scalar_t__ wcid; } ;
struct rt2x00_dev {TYPE_2__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* sta_remove ) (struct rt2x00_dev*,scalar_t__) ;} ;


 struct rt2x00_sta* sta_to_rt2x00_sta (struct ieee80211_sta*) ;
 int stub1 (struct rt2x00_dev*,scalar_t__) ;

int rt2x00mac_sta_remove(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
    struct ieee80211_sta *sta)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct rt2x00_sta *sta_priv = sta_to_rt2x00_sta(sta);




 if (sta_priv->wcid < 0)
  return 0;

 return rt2x00dev->ops->lib->sta_remove(rt2x00dev, sta_priv->wcid);
}
