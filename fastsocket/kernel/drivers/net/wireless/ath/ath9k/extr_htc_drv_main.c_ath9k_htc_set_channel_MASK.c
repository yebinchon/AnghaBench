#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {struct ieee80211_channel* chan; } ;
struct TYPE_9__ {int flags; TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_4__ conf; } ;
struct ieee80211_conf {int dummy; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct ath_hw {TYPE_3__* curchan; } ;
struct ath_common {TYPE_1__* hw; } ;
struct ath9k_hw_cal_data {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  cleanup_timer; } ;
struct ath9k_htc_priv {TYPE_5__ tx; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  htc; int /*<<< orphan*/  curtxpow; int /*<<< orphan*/  txpowlimit; struct ath9k_hw_cal_data caldata; struct ath_hw* ah; } ;
struct ath9k_channel {int dummy; } ;
typedef  enum htc_phymode { ____Placeholder_htc_phymode } htc_phymode ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_8__ {int /*<<< orphan*/  channel; } ;
struct TYPE_6__ {struct ieee80211_conf conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_HTC_TX_CLEANUP_INTERVAL ; 
 int /*<<< orphan*/  CONFIG ; 
 int EIO ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 int /*<<< orphan*/  OP_INVALID ; 
 int /*<<< orphan*/  OP_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WMI_DISABLE_INTR_CMDID ; 
 int /*<<< orphan*/  WMI_DRAIN_TXQ_ALL_CMDID ; 
 int /*<<< orphan*/  WMI_ENABLE_INTR_CMDID ; 
 int /*<<< orphan*/  WMI_SET_MODE_CMDID ; 
 int /*<<< orphan*/  WMI_START_RECV_CMDID ; 
 int /*<<< orphan*/  WMI_STOP_RECV_CMDID ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*) ; 
 int FUNC4 (struct ath9k_htc_priv*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath9k_htc_priv*) ; 
 struct ath_common* FUNC9 (struct ath_hw*) ; 
 int FUNC10 (struct ath_hw*,struct ath9k_channel*,struct ath9k_hw_cal_data*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_common*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_conf*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_conf*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct ath9k_htc_priv *priv,
				 struct ieee80211_hw *hw,
				 struct ath9k_channel *hchan)
{
	struct ath_hw *ah = priv->ah;
	struct ath_common *common = FUNC9(ah);
	struct ieee80211_conf *conf = &common->hw->conf;
	bool fastcc;
	struct ieee80211_channel *channel = hw->conf.chandef.chan;
	struct ath9k_hw_cal_data *caldata = NULL;
	enum htc_phymode mode;
	__be16 htc_mode;
	u8 cmd_rsp;
	int ret;

	if (FUNC21(OP_INVALID, &priv->op_flags))
		return -EIO;

	fastcc = !!(hw->conf.flags & IEEE80211_CONF_OFFCHANNEL);

	FUNC6(priv);

	FUNC17(&priv->tx.cleanup_timer);
	FUNC7(priv);

	FUNC0(WMI_DISABLE_INTR_CMDID);
	FUNC0(WMI_DRAIN_TXQ_ALL_CMDID);
	FUNC0(WMI_STOP_RECV_CMDID);

	FUNC11(priv);

	FUNC12(common, CONFIG,
		"(%u MHz) -> (%u MHz), HT: %d, HT40: %d fastcc: %d\n",
		priv->ah->curchan->channel,
		channel->center_freq, FUNC14(conf), FUNC15(conf),
		fastcc);

	if (!fastcc)
		caldata = &priv->caldata;

	ret = FUNC10(ah, hchan, caldata, fastcc);
	if (ret) {
		FUNC13(common,
			"Unable to reset channel (%u Mhz) reset status %d\n",
			channel->center_freq, ret);
		goto err;
	}

	FUNC2(ah, priv->curtxpow, priv->txpowlimit,
			       &priv->curtxpow);

	FUNC0(WMI_START_RECV_CMDID);
	if (ret)
		goto err;

	FUNC3(priv);

	mode = FUNC4(priv, hchan);
	htc_mode = FUNC16(mode);
	FUNC1(WMI_SET_MODE_CMDID, &htc_mode);
	if (ret)
		goto err;

	FUNC0(WMI_ENABLE_INTR_CMDID);
	if (ret)
		goto err;

	FUNC18(priv->htc);

	if (!FUNC21(OP_SCANNING, &priv->op_flags) &&
	    !(hw->conf.flags & IEEE80211_CONF_OFFCHANNEL))
		FUNC8(priv);

	FUNC19(&priv->tx.cleanup_timer,
		  jiffies + FUNC20(ATH9K_HTC_TX_CLEANUP_INTERVAL));

err:
	FUNC5(priv);
	return ret;
}