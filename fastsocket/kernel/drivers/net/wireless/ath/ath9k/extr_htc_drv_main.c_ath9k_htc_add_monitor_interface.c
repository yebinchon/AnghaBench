
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath_common {int macaddr; } ;
struct ath9k_htc_target_vif {int index; int is_vif_sta; int sta_index; int vif_index; int maxampdu; int macaddr; int opmode; int myaddr; } ;
struct ath9k_htc_target_sta {int index; int is_vif_sta; int sta_index; int vif_index; int maxampdu; int macaddr; int opmode; int myaddr; } ;
struct ath9k_htc_priv {scalar_t__ nvifs; int nstations; int sta_slot; int vif_slot; int mon_vif_idx; int* vif_sta_pos; TYPE_1__* ah; } ;
struct TYPE_2__ {int is_monitoring; int opmode; } ;


 int ATH9K_HTC_MAX_STA ;
 scalar_t__ ATH9K_HTC_MAX_VIF ;
 int CONFIG ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int FATAL ;
 int HTC_M_MONITOR ;
 int NL80211_IFTYPE_MONITOR ;
 int WMI_CMD_BUF (int ,struct ath9k_htc_target_vif*) ;
 int WMI_NODE_CREATE_CMDID ;
 int WMI_VAP_CREATE_CMDID ;
 int __ath9k_htc_remove_monitor_interface (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_err (struct ath_common*,char*) ;
 int cpu_to_be16 (int) ;
 void* ffz (int) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct ath9k_htc_target_vif*,int ,int) ;

__attribute__((used)) static int ath9k_htc_add_monitor_interface(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_target_vif hvif;
 struct ath9k_htc_target_sta tsta;
 int ret = 0, sta_idx;
 u8 cmd_rsp;

 if ((priv->nvifs >= ATH9K_HTC_MAX_VIF) ||
     (priv->nstations >= ATH9K_HTC_MAX_STA)) {
  ret = -ENOBUFS;
  goto err_vif;
 }

 sta_idx = ffz(priv->sta_slot);
 if ((sta_idx < 0) || (sta_idx > ATH9K_HTC_MAX_STA)) {
  ret = -ENOBUFS;
  goto err_vif;
 }




 memset(&hvif, 0, sizeof(struct ath9k_htc_target_vif));
 memcpy(&hvif.myaddr, common->macaddr, ETH_ALEN);

 hvif.opmode = HTC_M_MONITOR;
 hvif.index = ffz(priv->vif_slot);

 WMI_CMD_BUF(WMI_VAP_CREATE_CMDID, &hvif);
 if (ret)
  goto err_vif;





 priv->mon_vif_idx = hvif.index;
 priv->vif_slot |= (1 << hvif.index);





 if (!priv->nvifs)
  priv->ah->opmode = NL80211_IFTYPE_MONITOR;

 priv->nvifs++;




 memset(&tsta, 0, sizeof(struct ath9k_htc_target_sta));

 memcpy(&tsta.macaddr, common->macaddr, ETH_ALEN);

 tsta.is_vif_sta = 1;
 tsta.sta_index = sta_idx;
 tsta.vif_index = hvif.index;
 tsta.maxampdu = cpu_to_be16(0xffff);

 WMI_CMD_BUF(WMI_NODE_CREATE_CMDID, &tsta);
 if (ret) {
  ath_err(common, "Unable to add station entry for monitor mode\n");
  goto err_sta;
 }

 priv->sta_slot |= (1 << sta_idx);
 priv->nstations++;
 priv->vif_sta_pos[priv->mon_vif_idx] = sta_idx;
 priv->ah->is_monitoring = 1;

 ath_dbg(common, CONFIG,
  "Attached a monitor interface at idx: %d, sta idx: %d\n",
  priv->mon_vif_idx, sta_idx);

 return 0;

err_sta:



 __ath9k_htc_remove_monitor_interface(priv);
err_vif:
 ath_dbg(common, FATAL, "Unable to attach a monitor interface\n");

 return ret;
}
