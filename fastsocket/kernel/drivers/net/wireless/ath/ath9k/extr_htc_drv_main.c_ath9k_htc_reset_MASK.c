#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct ath_hw {int /*<<< orphan*/  curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_hw_cal_data {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  cleanup_timer; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; TYPE_3__ tx; TYPE_4__* hw; int /*<<< orphan*/  htc; int /*<<< orphan*/  curtxpow; int /*<<< orphan*/  txpowlimit; struct ath9k_hw_cal_data caldata; struct ath_hw* ah; } ;
typedef  enum htc_phymode { ____Placeholder_htc_phymode } htc_phymode ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct TYPE_7__ {TYPE_1__ chandef; } ;
struct TYPE_9__ {TYPE_2__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_HTC_TX_CLEANUP_INTERVAL ; 
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
 int FUNC4 (struct ath9k_htc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath9k_htc_priv*) ; 
 struct ath_common* FUNC10 (struct ath_hw*) ; 
 int FUNC11 (struct ath_hw*,int /*<<< orphan*/ ,struct ath9k_hw_cal_data*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_common*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

void FUNC23(struct ath9k_htc_priv *priv)
{
	struct ath_hw *ah = priv->ah;
	struct ath_common *common = FUNC10(ah);
	struct ieee80211_channel *channel = priv->hw->conf.chandef.chan;
	struct ath9k_hw_cal_data *caldata = NULL;
	enum htc_phymode mode;
	__be16 htc_mode;
	u8 cmd_rsp;
	int ret;

	FUNC21(&priv->mutex);
	FUNC6(priv);

	FUNC7(priv);
	FUNC17(priv->hw);

	FUNC15(&priv->tx.cleanup_timer);
	FUNC8(priv);

	FUNC0(WMI_DISABLE_INTR_CMDID);
	FUNC0(WMI_DRAIN_TXQ_ALL_CMDID);
	FUNC0(WMI_STOP_RECV_CMDID);

	FUNC12(priv);

	caldata = &priv->caldata;
	ret = FUNC11(ah, ah->curchan, caldata, false);
	if (ret) {
		FUNC13(common,
			"Unable to reset device (%u Mhz) reset status %d\n",
			channel->center_freq, ret);
	}

	FUNC2(ah, priv->curtxpow, priv->txpowlimit,
			       &priv->curtxpow);

	FUNC0(WMI_START_RECV_CMDID);
	FUNC3(priv);

	mode = FUNC4(priv, ah->curchan);
	htc_mode = FUNC14(mode);
	FUNC1(WMI_SET_MODE_CMDID, &htc_mode);

	FUNC0(WMI_ENABLE_INTR_CMDID);
	FUNC16(priv->htc);
	FUNC9(priv);
	FUNC18(priv->hw);

	FUNC19(&priv->tx.cleanup_timer,
		  jiffies + FUNC20(ATH9K_HTC_TX_CLEANUP_INTERVAL));

	FUNC5(priv);
	FUNC22(&priv->mutex);
}