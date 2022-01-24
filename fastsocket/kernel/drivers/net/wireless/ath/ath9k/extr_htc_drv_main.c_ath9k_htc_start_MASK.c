#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct ieee80211_hw {TYPE_2__ conf; struct ath9k_htc_priv* priv; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct ath_hw {int /*<<< orphan*/  caldata; } ;
struct ath_common {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  cleanup_timer; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  flags; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; TYPE_3__ tx; int /*<<< orphan*/  htc; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  curtxpow; int /*<<< orphan*/  txpowlimit; struct ath_hw* ah; } ;
struct ath9k_channel {int dummy; } ;
typedef  enum htc_phymode { ____Placeholder_htc_phymode } htc_phymode ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_HTC_OP_TX_QUEUES_STOP ; 
 int /*<<< orphan*/  ATH9K_HTC_TX_CLEANUP_INTERVAL ; 
 int /*<<< orphan*/  ATH9K_PM_AWAKE ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  OP_INVALID ; 
 int /*<<< orphan*/  WMI_ATH_INIT_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WMI_FLUSH_RECV_CMDID ; 
 int /*<<< orphan*/  WMI_SET_MODE_CMDID ; 
 int /*<<< orphan*/  WMI_START_RECV_CMDID ; 
 struct ath9k_channel* FUNC2 (struct ieee80211_hw*,struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*) ; 
 int FUNC5 (struct ath9k_htc_priv*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath9k_htc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*) ; 
 int FUNC8 (struct ath9k_htc_priv*,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC9 (struct ath_hw*) ; 
 int FUNC10 (struct ath_hw*,struct ath9k_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_common*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct ieee80211_hw *hw)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_hw *ah = priv->ah;
	struct ath_common *common = FUNC9(ah);
	struct ieee80211_channel *curchan = hw->conf.chandef.chan;
	struct ath9k_channel *init_channel;
	int ret = 0;
	enum htc_phymode mode;
	__be16 htc_mode;
	u8 cmd_rsp;

	FUNC19(&priv->mutex);

	FUNC11(common, CONFIG,
		"Starting driver with initial channel: %d MHz\n",
		curchan->center_freq);

	/* Ensure that HW is awake before flushing RX */
	FUNC6(priv, ATH9K_PM_AWAKE);
	FUNC0(WMI_FLUSH_RECV_CMDID);

	/* setup initial channel */
	init_channel = FUNC2(hw, ah);

	ret = FUNC10(ah, init_channel, ah->caldata, false);
	if (ret) {
		FUNC12(common,
			"Unable to reset hardware; reset status %d (freq %u MHz)\n",
			ret, curchan->center_freq);
		FUNC20(&priv->mutex);
		return ret;
	}

	FUNC3(ah, priv->curtxpow, priv->txpowlimit,
			       &priv->curtxpow);

	mode = FUNC5(priv, init_channel);
	htc_mode = FUNC14(mode);
	FUNC1(WMI_SET_MODE_CMDID, &htc_mode);
	FUNC0(WMI_ATH_INIT_CMDID);
	FUNC0(WMI_START_RECV_CMDID);

	FUNC4(priv);

	ret = FUNC8(priv, 0);
	if (ret)
		FUNC11(common, CONFIG,
			"Failed to update capability in target\n");

	FUNC13(OP_INVALID, &priv->op_flags);
	FUNC15(priv->htc);

	FUNC21(&priv->tx.tx_lock);
	priv->tx.flags &= ~ATH9K_HTC_OP_TX_QUEUES_STOP;
	FUNC22(&priv->tx.tx_lock);

	FUNC16(hw);

	FUNC17(&priv->tx.cleanup_timer,
		  jiffies + FUNC18(ATH9K_HTC_TX_CLEANUP_INTERVAL));

	FUNC7(priv);

	FUNC20(&priv->mutex);

	return ret;
}