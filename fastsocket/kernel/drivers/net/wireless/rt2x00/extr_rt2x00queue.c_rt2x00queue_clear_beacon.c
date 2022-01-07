
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_intf {int beacon_skb_mutex; int beacon; } ;
struct rt2x00_dev {TYPE_1__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {int (* clear_beacon ) (int ) ;} ;
struct TYPE_3__ {TYPE_2__* lib; } ;


 int ENOBUFS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00queue_free_skb (int ) ;
 int stub1 (int ) ;
 scalar_t__ unlikely (int) ;
 struct rt2x00_intf* vif_to_intf (struct ieee80211_vif*) ;

int rt2x00queue_clear_beacon(struct rt2x00_dev *rt2x00dev,
        struct ieee80211_vif *vif)
{
 struct rt2x00_intf *intf = vif_to_intf(vif);

 if (unlikely(!intf->beacon))
  return -ENOBUFS;

 mutex_lock(&intf->beacon_skb_mutex);




 rt2x00queue_free_skb(intf->beacon);





 if (rt2x00dev->ops->lib->clear_beacon)
  rt2x00dev->ops->lib->clear_beacon(intf->beacon);

 mutex_unlock(&intf->beacon_skb_mutex);

 return 0;
}
