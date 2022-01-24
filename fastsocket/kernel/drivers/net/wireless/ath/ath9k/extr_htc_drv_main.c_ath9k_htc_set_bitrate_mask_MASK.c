#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct cfg80211_bitrate_mask {TYPE_1__* control; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {int /*<<< orphan*/  index; } ;
struct ath9k_htc_target_rate_mask {size_t band; void* mask; int /*<<< orphan*/  vif_index; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ah; } ;
struct TYPE_2__ {int /*<<< orphan*/  legacy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 size_t IEEE80211_BAND_2GHZ ; 
 size_t IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  WMI_BITRATE_MASK_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ath9k_htc_target_rate_mask*) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_target_rate_mask*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
				      struct ieee80211_vif *vif,
				      const struct cfg80211_bitrate_mask *mask)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_common *common = FUNC1(priv->ah);
	struct ath9k_htc_target_rate_mask tmask;
	struct ath9k_htc_vif *avp = (void *)vif->drv_priv;
	int ret = 0;
	u8 cmd_rsp;

	FUNC5(&tmask, 0, sizeof(struct ath9k_htc_target_rate_mask));

	tmask.vif_index = avp->index;
	tmask.band = IEEE80211_BAND_2GHZ;
	tmask.mask = FUNC4(mask->control[IEEE80211_BAND_2GHZ].legacy);

	FUNC0(WMI_BITRATE_MASK_CMDID, &tmask);
	if (ret) {
		FUNC3(common,
			"Unable to set 2G rate mask for "
			"interface at idx: %d\n", avp->index);
		goto out;
	}

	tmask.band = IEEE80211_BAND_5GHZ;
	tmask.mask = FUNC4(mask->control[IEEE80211_BAND_5GHZ].legacy);

	FUNC0(WMI_BITRATE_MASK_CMDID, &tmask);
	if (ret) {
		FUNC3(common,
			"Unable to set 5G rate mask for "
			"interface at idx: %d\n", avp->index);
		goto out;
	}

	FUNC2(common, CONFIG, "Set bitrate masks: 0x%x, 0x%x\n",
		mask->control[IEEE80211_BAND_2GHZ].legacy,
		mask->control[IEEE80211_BAND_5GHZ].legacy);
out:
	return ret;
}