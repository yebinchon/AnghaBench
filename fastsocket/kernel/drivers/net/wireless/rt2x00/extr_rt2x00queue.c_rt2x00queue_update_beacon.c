
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_intf {int beacon_skb_mutex; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00queue_update_beacon_locked (struct rt2x00_dev*,struct ieee80211_vif*) ;
 struct rt2x00_intf* vif_to_intf (struct ieee80211_vif*) ;

int rt2x00queue_update_beacon(struct rt2x00_dev *rt2x00dev,
         struct ieee80211_vif *vif)
{
 struct rt2x00_intf *intf = vif_to_intf(vif);
 int ret;

 mutex_lock(&intf->beacon_skb_mutex);
 ret = rt2x00queue_update_beacon_locked(rt2x00dev, vif);
 mutex_unlock(&intf->beacon_skb_mutex);

 return ret;
}
