
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_sta {int wcid; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;


 int rt2800_config_wcid (struct rt2x00_dev*,int ,int) ;
 int rt2800_config_wcid_attr_bssidx (struct rt2x00_dev*,int,int ) ;
 int rt2800_delete_wcid_attr (struct rt2x00_dev*,int) ;
 int rt2800_find_wcid (struct rt2x00_dev*) ;
 int rt2x00lib_get_bssidx (struct rt2x00_dev*,struct ieee80211_vif*) ;
 struct rt2x00_sta* sta_to_rt2x00_sta (struct ieee80211_sta*) ;

int rt2800_sta_add(struct rt2x00_dev *rt2x00dev, struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 int wcid;
 struct rt2x00_sta *sta_priv = sta_to_rt2x00_sta(sta);




 wcid = rt2800_find_wcid(rt2x00dev);





 sta_priv->wcid = wcid;





 if (wcid < 0)
  return 0;




 rt2800_delete_wcid_attr(rt2x00dev, wcid);
 rt2800_config_wcid(rt2x00dev, sta->addr, wcid);
 rt2800_config_wcid_attr_bssidx(rt2x00dev, wcid,
           rt2x00lib_get_bssidx(rt2x00dev, vif));
 return 0;
}
