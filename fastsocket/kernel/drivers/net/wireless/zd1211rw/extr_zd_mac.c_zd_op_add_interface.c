
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_mac {scalar_t__ type; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;


 int EOPNOTSUPP ;





 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 int set_mac_and_bssid (struct zd_mac*) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;

__attribute__((used)) static int zd_op_add_interface(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif)
{
 struct zd_mac *mac = zd_hw_mac(hw);


 if (mac->type != NL80211_IFTYPE_UNSPECIFIED)
  return -EOPNOTSUPP;

 switch (vif->type) {
 case 129:
 case 130:
 case 128:
 case 132:
 case 131:
  mac->type = vif->type;
  break;
 default:
  return -EOPNOTSUPP;
 }

 mac->vif = vif;

 return set_mac_and_bssid(mac);
}
