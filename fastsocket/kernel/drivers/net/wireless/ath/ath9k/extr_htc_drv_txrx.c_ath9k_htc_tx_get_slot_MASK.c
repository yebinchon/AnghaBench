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
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_slot; } ;
struct ath9k_htc_priv {TYPE_1__ tx; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int MAX_TX_BUF_NUM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ath9k_htc_priv *priv)
{
	int slot;

	FUNC2(&priv->tx.tx_lock);
	slot = FUNC1(priv->tx.tx_slot, MAX_TX_BUF_NUM);
	if (slot >= MAX_TX_BUF_NUM) {
		FUNC3(&priv->tx.tx_lock);
		return -ENOBUFS;
	}
	FUNC0(slot, priv->tx.tx_slot);
	FUNC3(&priv->tx.tx_lock);

	return slot;
}