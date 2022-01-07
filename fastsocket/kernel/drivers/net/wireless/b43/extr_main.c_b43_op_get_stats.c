
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_low_level_stats {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wl {int mutex; int ieee_stats; } ;


 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int memcpy (struct ieee80211_low_level_stats*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int b43_op_get_stats(struct ieee80211_hw *hw,
       struct ieee80211_low_level_stats *stats)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);

 mutex_lock(&wl->mutex);
 memcpy(stats, &wl->ieee_stats, sizeof(*stats));
 mutex_unlock(&wl->mutex);

 return 0;
}
