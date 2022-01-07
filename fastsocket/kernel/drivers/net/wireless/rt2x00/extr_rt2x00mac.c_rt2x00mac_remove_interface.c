
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_intf {TYPE_1__* beacon; } ;
struct rt2x00_dev {int intf_sta_count; int intf_ap_count; int flags; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct TYPE_2__ {int flags; } ;


 int DEVICE_STATE_PRESENT ;
 int ENTRY_BCN_ASSIGNED ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 int clear_bit (int ,int *) ;
 int rt2x00lib_config_intf (struct rt2x00_dev*,struct rt2x00_intf*,int ,int *,int *) ;
 int test_bit (int ,int *) ;
 struct rt2x00_intf* vif_to_intf (struct ieee80211_vif*) ;

void rt2x00mac_remove_interface(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct rt2x00_intf *intf = vif_to_intf(vif);






 if (!test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags) ||
     (vif->type == NL80211_IFTYPE_AP && !rt2x00dev->intf_ap_count) ||
     (vif->type != NL80211_IFTYPE_AP && !rt2x00dev->intf_sta_count))
  return;

 if (vif->type == NL80211_IFTYPE_AP)
  rt2x00dev->intf_ap_count--;
 else
  rt2x00dev->intf_sta_count--;





 clear_bit(ENTRY_BCN_ASSIGNED, &intf->beacon->flags);





 rt2x00lib_config_intf(rt2x00dev, intf,
         NL80211_IFTYPE_UNSPECIFIED, ((void*)0), ((void*)0));
}
