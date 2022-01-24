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
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_hw {scalar_t__ is_monitoring; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cleanup_timer; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  op_flags; struct ath_hw* ah; int /*<<< orphan*/  led_work; int /*<<< orphan*/  ps_work; int /*<<< orphan*/  fatal_work; TYPE_1__ tx; int /*<<< orphan*/  rx_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANY ; 
 int /*<<< orphan*/  ATH9K_PM_FULL_SLEEP ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  OP_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_DISABLE_INTR_CMDID ; 
 int /*<<< orphan*/  WMI_DRAIN_TXQ_ALL_CMDID ; 
 int /*<<< orphan*/  WMI_STOP_RECV_CMDID ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*) ; 
 struct ath_common* FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(struct ieee80211_hw *hw)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_hw *ah = priv->ah;
	struct ath_common *common = FUNC8(ah);
	int ret __attribute__ ((unused));
	u8 cmd_rsp;

	FUNC15(&priv->mutex);

	if (FUNC19(OP_INVALID, &priv->op_flags)) {
		FUNC12(common, ANY, "Device not present\n");
		FUNC16(&priv->mutex);
		return;
	}

	FUNC2(priv);

	FUNC0(WMI_DISABLE_INTR_CMDID);
	FUNC0(WMI_DRAIN_TXQ_ALL_CMDID);
	FUNC0(WMI_STOP_RECV_CMDID);

	FUNC18(&priv->rx_tasklet);

	FUNC14(&priv->tx.cleanup_timer);
	FUNC7(priv);
	FUNC11(priv);

	FUNC16(&priv->mutex);

	/* Cancel all the running timers/work .. */
	FUNC13(&priv->fatal_work);
	FUNC13(&priv->ps_work);

#ifdef CONFIG_MAC80211_LEDS
	cancel_work_sync(&priv->led_work);
#endif
	FUNC5(priv);

	FUNC15(&priv->mutex);

	FUNC6(priv);

	/* Remove a monitor interface if it's present. */
	if (priv->ah->is_monitoring)
		FUNC3(priv);

	FUNC10(ah);
	FUNC9(ah);
	FUNC1(priv);
	FUNC4(priv, ATH9K_PM_FULL_SLEEP);

	FUNC17(OP_INVALID, &priv->op_flags);

	FUNC12(common, CONFIG, "Driver halt\n");
	FUNC16(&priv->mutex);
}