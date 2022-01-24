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
struct il_rx_queue {int need_update; int /*<<< orphan*/  bd; } ;
struct il_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  txq; int /*<<< orphan*/  lock; struct il_rx_queue rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INT_COALESCING ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IL_HOST_INT_CALIB_TIMEOUT_DEF ; 
 int /*<<< orphan*/  S_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,struct il_rx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,struct il_rx_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*) ; 
 int FUNC6 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*) ; 
 int FUNC9 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*,struct il_rx_queue*) ; 
 int /*<<< orphan*/  FUNC11 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC15(struct il_priv *il)
{
	unsigned long flags;
	struct il_rx_queue *rxq = &il->rxq;
	int ret;

	FUNC13(&il->lock, flags);
	FUNC8(il);
	/* Set interrupt coalescing calibration timer to default (512 usecs) */
	FUNC11(il, CSR_INT_COALESCING, IL_HOST_INT_CALIB_TIMEOUT_DEF);
	FUNC14(&il->lock, flags);

	FUNC5(il);
	FUNC1(il);

	/* Allocate the RX queue, or reset if it is already allocated */
	if (!rxq->bd) {
		ret = FUNC9(il);
		if (ret) {
			FUNC0("Unable to initialize Rx queue\n");
			return -ENOMEM;
		}
	} else
		FUNC3(il, rxq);

	FUNC4(il);

	FUNC2(il, rxq);

	FUNC13(&il->lock, flags);

	rxq->need_update = 1;
	FUNC10(il, rxq);

	FUNC14(&il->lock, flags);

	/* Allocate or reset and init all Tx and Command queues */
	if (!il->txq) {
		ret = FUNC6(il);
		if (ret)
			return ret;
	} else
		FUNC7(il);

	FUNC12(S_INIT, &il->status);

	return 0;
}