
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct cfg80211_bitrate_mask {TYPE_1__* control; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {int index; } ;
struct ath9k_htc_target_rate_mask {size_t band; void* mask; int vif_index; } ;
struct ath9k_htc_priv {int ah; } ;
struct TYPE_2__ {int legacy; } ;


 int CONFIG ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int WMI_BITRATE_MASK_CMDID ;
 int WMI_CMD_BUF (int ,struct ath9k_htc_target_rate_mask*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ) ;
 int ath_err (struct ath_common*,char*,int ) ;
 void* cpu_to_be32 (int ) ;
 int memset (struct ath9k_htc_target_rate_mask*,int ,int) ;

__attribute__((used)) static int ath9k_htc_set_bitrate_mask(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          const struct cfg80211_bitrate_mask *mask)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_target_rate_mask tmask;
 struct ath9k_htc_vif *avp = (void *)vif->drv_priv;
 int ret = 0;
 u8 cmd_rsp;

 memset(&tmask, 0, sizeof(struct ath9k_htc_target_rate_mask));

 tmask.vif_index = avp->index;
 tmask.band = IEEE80211_BAND_2GHZ;
 tmask.mask = cpu_to_be32(mask->control[IEEE80211_BAND_2GHZ].legacy);

 WMI_CMD_BUF(WMI_BITRATE_MASK_CMDID, &tmask);
 if (ret) {
  ath_err(common,
   "Unable to set 2G rate mask for "
   "interface at idx: %d\n", avp->index);
  goto out;
 }

 tmask.band = IEEE80211_BAND_5GHZ;
 tmask.mask = cpu_to_be32(mask->control[IEEE80211_BAND_5GHZ].legacy);

 WMI_CMD_BUF(WMI_BITRATE_MASK_CMDID, &tmask);
 if (ret) {
  ath_err(common,
   "Unable to set 5G rate mask for "
   "interface at idx: %d\n", avp->index);
  goto out;
 }

 ath_dbg(common, CONFIG, "Set bitrate masks: 0x%x, 0x%x\n",
  mask->control[IEEE80211_BAND_2GHZ].legacy,
  mask->control[IEEE80211_BAND_5GHZ].legacy);
out:
 return ret;
}
