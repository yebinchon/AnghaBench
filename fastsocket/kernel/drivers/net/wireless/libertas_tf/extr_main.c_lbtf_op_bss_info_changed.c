
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct lbtf_private {int preamble; TYPE_1__* vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct lbtf_private* priv; } ;
struct ieee80211_bss_conf {scalar_t__ use_short_preamble; int bssid; int beacon_int; } ;
struct TYPE_2__ {int type; } ;


 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int CMD_TYPE_LONG_PREAMBLE ;
 int CMD_TYPE_SHORT_PREAMBLE ;
 int LBTF_DEB_MACOPS ;


 struct sk_buff* ieee80211_beacon_get (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int is_zero_ether_addr (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int lbtf_beacon_ctrl (struct lbtf_private*,int,int ) ;
 int lbtf_beacon_set (struct lbtf_private*,struct sk_buff*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_set_bssid (struct lbtf_private*,int,int ) ;
 int lbtf_set_radio_control (struct lbtf_private*) ;

__attribute__((used)) static void lbtf_op_bss_info_changed(struct ieee80211_hw *hw,
   struct ieee80211_vif *vif,
   struct ieee80211_bss_conf *bss_conf,
   u32 changes)
{
 struct lbtf_private *priv = hw->priv;
 struct sk_buff *beacon;
 lbtf_deb_enter(LBTF_DEB_MACOPS);

 if (changes & (BSS_CHANGED_BEACON | BSS_CHANGED_BEACON_INT)) {
  switch (priv->vif->type) {
  case 129:
  case 128:
   beacon = ieee80211_beacon_get(hw, vif);
   if (beacon) {
    lbtf_beacon_set(priv, beacon);
    kfree_skb(beacon);
    lbtf_beacon_ctrl(priv, 1,
       bss_conf->beacon_int);
   }
   break;
  default:
   break;
  }
 }

 if (changes & BSS_CHANGED_BSSID) {
  bool activate = !is_zero_ether_addr(bss_conf->bssid);
  lbtf_set_bssid(priv, activate, bss_conf->bssid);
 }

 if (changes & BSS_CHANGED_ERP_PREAMBLE) {
  if (bss_conf->use_short_preamble)
   priv->preamble = CMD_TYPE_SHORT_PREAMBLE;
  else
   priv->preamble = CMD_TYPE_LONG_PREAMBLE;
  lbtf_set_radio_control(priv);
 }

 lbtf_deb_leave(LBTF_DEB_MACOPS);
}
