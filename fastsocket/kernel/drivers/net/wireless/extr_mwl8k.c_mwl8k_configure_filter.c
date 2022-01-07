
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char u8 ;
typedef scalar_t__ u64 ;
struct mwl8k_vif {TYPE_2__* vif; } ;
struct mwl8k_priv {int sniffer_enabled; scalar_t__ ap_fw; } ;
struct mwl8k_cmd_pkt {int dummy; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_3__ {char* bssid; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;


 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_OTHER_BSS ;
 struct mwl8k_cmd_pkt* __mwl8k_cmd_mac_multicast_adr (struct ieee80211_hw*,int,int ,...) ;
 int kfree (struct mwl8k_cmd_pkt*) ;
 int mwl8k_cmd_enable_sniffer (struct ieee80211_hw*,int ) ;
 int mwl8k_cmd_set_post_scan (struct ieee80211_hw*,char const*) ;
 int mwl8k_cmd_set_pre_scan (struct ieee80211_hw*) ;
 scalar_t__ mwl8k_configure_filter_sniffer (struct ieee80211_hw*,unsigned int,unsigned int*) ;
 struct mwl8k_vif* mwl8k_first_vif (struct mwl8k_priv*) ;
 scalar_t__ mwl8k_fw_lock (struct ieee80211_hw*) ;
 int mwl8k_fw_unlock (struct ieee80211_hw*) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,struct mwl8k_cmd_pkt*) ;

__attribute__((used)) static void mwl8k_configure_filter(struct ieee80211_hw *hw,
       unsigned int changed_flags,
       unsigned int *total_flags,
       u64 multicast)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_cmd_pkt *cmd = (void *)(unsigned long)multicast;





 if (priv->ap_fw) {
  *total_flags &= FIF_ALLMULTI | FIF_BCN_PRBRESP_PROMISC;
  kfree(cmd);
  return;
 }





 if (*total_flags & (FIF_CONTROL | FIF_OTHER_BSS) &&
     mwl8k_configure_filter_sniffer(hw, changed_flags, total_flags)) {
  kfree(cmd);
  return;
 }


 *total_flags &= FIF_ALLMULTI | FIF_BCN_PRBRESP_PROMISC;

 if (mwl8k_fw_lock(hw)) {
  kfree(cmd);
  return;
 }

 if (priv->sniffer_enabled) {
  mwl8k_cmd_enable_sniffer(hw, 0);
  priv->sniffer_enabled = 0;
 }

 if (changed_flags & FIF_BCN_PRBRESP_PROMISC) {
  if (*total_flags & FIF_BCN_PRBRESP_PROMISC) {



   mwl8k_cmd_set_pre_scan(hw);
  } else {
   struct mwl8k_vif *mwl8k_vif;
   const u8 *bssid;
   mwl8k_vif = mwl8k_first_vif(priv);
   if (mwl8k_vif != ((void*)0))
    bssid = mwl8k_vif->vif->bss_conf.bssid;
   else
    bssid = "\x01\x00\x00\x00\x00\x00";

   mwl8k_cmd_set_post_scan(hw, bssid);
  }
 }







 if (*total_flags & FIF_ALLMULTI) {
  kfree(cmd);



  cmd = __mwl8k_cmd_mac_multicast_adr(hw, 1, 0, ((void*)0));

 }

 if (cmd != ((void*)0)) {
  mwl8k_post_cmd(hw, cmd);
  kfree(cmd);
 }

 mwl8k_fw_unlock(hw);
}
