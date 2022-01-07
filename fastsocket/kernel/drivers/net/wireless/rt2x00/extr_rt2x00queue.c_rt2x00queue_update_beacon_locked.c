
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct txentry_desc {int dummy; } ;
struct skb_frame_desc {TYPE_3__* entry; } ;
struct rt2x00_intf {TYPE_3__* beacon; } ;
struct rt2x00_dev {TYPE_2__* ops; int hw; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_7__ {int skb; } ;
struct TYPE_6__ {TYPE_1__* lib; } ;
struct TYPE_5__ {int (* write_beacon ) (TYPE_3__*,struct txentry_desc*) ;} ;


 int ENOBUFS ;
 int ENOMEM ;
 struct skb_frame_desc* get_skb_frame_desc (int ) ;
 int ieee80211_beacon_get (int ,struct ieee80211_vif*) ;
 int memset (struct skb_frame_desc*,int ,int) ;
 int rt2x00queue_create_tx_descriptor (struct rt2x00_dev*,int ,struct txentry_desc*,int *) ;
 int rt2x00queue_free_skb (TYPE_3__*) ;
 int stub1 (TYPE_3__*,struct txentry_desc*) ;
 scalar_t__ unlikely (int) ;
 struct rt2x00_intf* vif_to_intf (struct ieee80211_vif*) ;

int rt2x00queue_update_beacon_locked(struct rt2x00_dev *rt2x00dev,
         struct ieee80211_vif *vif)
{
 struct rt2x00_intf *intf = vif_to_intf(vif);
 struct skb_frame_desc *skbdesc;
 struct txentry_desc txdesc;

 if (unlikely(!intf->beacon))
  return -ENOBUFS;




 rt2x00queue_free_skb(intf->beacon);

 intf->beacon->skb = ieee80211_beacon_get(rt2x00dev->hw, vif);
 if (!intf->beacon->skb)
  return -ENOMEM;






 rt2x00queue_create_tx_descriptor(rt2x00dev, intf->beacon->skb, &txdesc, ((void*)0));




 skbdesc = get_skb_frame_desc(intf->beacon->skb);
 memset(skbdesc, 0, sizeof(*skbdesc));
 skbdesc->entry = intf->beacon;




 rt2x00dev->ops->lib->write_beacon(intf->beacon, &txdesc);

 return 0;

}
