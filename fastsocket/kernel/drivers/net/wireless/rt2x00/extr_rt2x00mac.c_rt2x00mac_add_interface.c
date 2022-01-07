
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_intf {struct queue_entry* beacon; int beacon_skb_mutex; } ;
struct rt2x00_dev {scalar_t__ packet_filter; int intf_sta_count; int intf_ap_count; int flags; struct data_queue* bcn; } ;
struct queue_entry {int flags; } ;
struct ieee80211_vif {int addr; int type; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct data_queue {unsigned int limit; struct queue_entry* entries; } ;


 int DEVICE_STATE_PRESENT ;
 int DEVICE_STATE_STARTED ;
 int ENOBUFS ;
 int ENODEV ;
 int ENTRY_BCN_ASSIGNED ;
 int NL80211_IFTYPE_AP ;
 int mutex_init (int *) ;
 int rt2x00lib_config_intf (struct rt2x00_dev*,struct rt2x00_intf*,int ,int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 struct rt2x00_intf* vif_to_intf (struct ieee80211_vif*) ;

int rt2x00mac_add_interface(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct rt2x00_intf *intf = vif_to_intf(vif);
 struct data_queue *queue = rt2x00dev->bcn;
 struct queue_entry *entry = ((void*)0);
 unsigned int i;





 if (!test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags) ||
     !test_bit(DEVICE_STATE_STARTED, &rt2x00dev->flags))
  return -ENODEV;







 for (i = 0; i < queue->limit; i++) {
  entry = &queue->entries[i];
  if (!test_and_set_bit(ENTRY_BCN_ASSIGNED, &entry->flags))
   break;
 }

 if (unlikely(i == queue->limit))
  return -ENOBUFS;






 if (vif->type == NL80211_IFTYPE_AP)
  rt2x00dev->intf_ap_count++;
 else
  rt2x00dev->intf_sta_count++;

 mutex_init(&intf->beacon_skb_mutex);
 intf->beacon = entry;
 rt2x00lib_config_intf(rt2x00dev, intf, vif->type,
         vif->addr, ((void*)0));






 rt2x00dev->packet_filter = 0;

 return 0;
}
