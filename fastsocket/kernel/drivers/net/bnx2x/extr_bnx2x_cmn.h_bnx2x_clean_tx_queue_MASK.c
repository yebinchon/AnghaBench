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
struct bnx2x_fp_txdata {int /*<<< orphan*/  tx_pkt_cons; int /*<<< orphan*/  tx_pkt_prod; int /*<<< orphan*/  txq_index; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 scalar_t__ FUNC1 (struct bnx2x_fp_txdata*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static inline int FUNC4(struct bnx2x *bp,
				       struct bnx2x_fp_txdata *txdata)
{
	int cnt = 1000;

	while (FUNC1(txdata)) {
		if (!cnt) {
			FUNC0("timeout waiting for queue[%d]: txdata->tx_pkt_prod(%d) != txdata->tx_pkt_cons(%d)\n",
				  txdata->txq_index, txdata->tx_pkt_prod,
				  txdata->tx_pkt_cons);
#ifdef BNX2X_STOP_ON_ERROR
			bnx2x_panic();
			return -EBUSY;
#else
			break;
#endif
		}
		cnt--;
		FUNC3(1000, 2000);
	}

	return 0;
}