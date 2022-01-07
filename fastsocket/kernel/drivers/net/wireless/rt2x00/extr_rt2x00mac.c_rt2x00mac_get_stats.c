
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int low_level_stats; } ;
struct ieee80211_low_level_stats {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int memcpy (struct ieee80211_low_level_stats*,int *,int) ;

int rt2x00mac_get_stats(struct ieee80211_hw *hw,
   struct ieee80211_low_level_stats *stats)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;






 memcpy(stats, &rt2x00dev->low_level_stats, sizeof(*stats));

 return 0;
}
