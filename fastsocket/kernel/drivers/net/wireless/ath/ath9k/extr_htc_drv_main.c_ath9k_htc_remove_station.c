
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {size_t addr; scalar_t__ drv_priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {size_t index; } ;
struct ath9k_htc_sta {int index; } ;
struct ath9k_htc_priv {int* vif_sta_pos; int sta_slot; int nstations; int ah; } ;


 int CONFIG ;
 int WMI_CMD_BUF (int ,int*) ;
 int WMI_NODE_REMOVE_CMDID ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,size_t,int) ;
 int ath_err (struct ath_common*,char*,size_t) ;

__attribute__((used)) static int ath9k_htc_remove_station(struct ath9k_htc_priv *priv,
        struct ieee80211_vif *vif,
        struct ieee80211_sta *sta)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *) vif->drv_priv;
 struct ath9k_htc_sta *ista;
 int ret;
 u8 cmd_rsp, sta_idx;

 if (sta) {
  ista = (struct ath9k_htc_sta *) sta->drv_priv;
  sta_idx = ista->index;
 } else {
  sta_idx = priv->vif_sta_pos[avp->index];
 }

 WMI_CMD_BUF(WMI_NODE_REMOVE_CMDID, &sta_idx);
 if (ret) {
  if (sta)
   ath_err(common,
    "Unable to remove station entry for: %pM\n",
    sta->addr);
  return ret;
 }

 if (sta) {
  ath_dbg(common, CONFIG,
   "Removed a station entry for: %pM (idx: %d)\n",
   sta->addr, sta_idx);
 } else {
  ath_dbg(common, CONFIG,
   "Removed a station entry for VIF %d (idx: %d)\n",
   avp->index, sta_idx);
 }

 priv->sta_slot &= ~(1 << sta_idx);
 priv->nstations--;

 return 0;
}
