#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ps_work; int /*<<< orphan*/  beacon_lock; int /*<<< orphan*/  op_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	struct ath9k_htc_priv *priv = hw->priv;

	FUNC2(&priv->mutex);
	FUNC5(&priv->beacon_lock);
	FUNC4(OP_SCANNING, &priv->op_flags);
	FUNC6(&priv->beacon_lock);
	FUNC1(&priv->ps_work);
	FUNC0(priv);
	FUNC3(&priv->mutex);
}