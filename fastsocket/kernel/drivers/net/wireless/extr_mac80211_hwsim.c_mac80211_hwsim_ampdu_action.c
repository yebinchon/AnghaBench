
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;


 int EOPNOTSUPP ;







 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;

__attribute__((used)) static int mac80211_hwsim_ampdu_action(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           enum ieee80211_ampdu_mlme_action action,
           struct ieee80211_sta *sta, u16 tid, u16 *ssn,
           u8 buf_size)
{
 switch (action) {
 case 131:
  ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 130:
 case 129:
 case 128:
  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 132:
  break;
 case 134:
 case 133:
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
