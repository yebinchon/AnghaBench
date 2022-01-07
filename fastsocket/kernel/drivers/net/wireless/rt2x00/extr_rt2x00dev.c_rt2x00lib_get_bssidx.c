
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {TYPE_1__* ops; scalar_t__ intf_sta_count; } ;
struct ieee80211_vif {int* addr; } ;
struct TYPE_2__ {int max_ap_intf; } ;



u32 rt2x00lib_get_bssidx(struct rt2x00_dev *rt2x00dev,
    struct ieee80211_vif *vif)
{




 if (rt2x00dev->intf_sta_count)
  return 0;
 return vif->addr[5] & (rt2x00dev->ops->max_ap_intf - 1);
}
