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
struct mwl8k_priv {int /*<<< orphan*/  poll_tx_task; scalar_t__ regs; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/ * tx_wait; int /*<<< orphan*/  pending_tx_pkts; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MWL8K_A2H_INT_TX_DONE ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mwl8k_priv*) ; 
 scalar_t__ FUNC2 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct ieee80211_hw *hw = (struct ieee80211_hw *)data;
	struct mwl8k_priv *priv = hw->priv;
	int limit;
	int i;

	limit = 32;

	FUNC3(&priv->tx_lock);

	for (i = 0; i < FUNC1(priv); i++)
		limit -= FUNC2(hw, i, limit, 0);

	if (!priv->pending_tx_pkts && priv->tx_wait != NULL) {
		FUNC0(priv->tx_wait);
		priv->tx_wait = NULL;
	}

	FUNC4(&priv->tx_lock);

	if (limit) {
		FUNC6(~MWL8K_A2H_INT_TX_DONE,
		       priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS);
	} else {
		FUNC5(&priv->poll_tx_task);
	}
}