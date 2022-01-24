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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  tx_pkts; } ;
struct ql_adapter {int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  xg_sem_mask; int /*<<< orphan*/  ndev; TYPE_1__ nic_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct ql_adapter*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ql_adapter *qdev)
{
	u32 i;
	u64 data;
	u64 *iter = &qdev->nic_stats.tx_pkts;

	FUNC5(&qdev->stats_lock);
	if (FUNC3(qdev, qdev->xg_sem_mask)) {
			FUNC1(qdev, drv, qdev->ndev,
				  "Couldn't get xgmac sem.\n");
		goto quit;
	}
	/*
	 * Get TX statistics.
	 */
	for (i = 0x200; i < 0x280; i += 8) {
		if (FUNC2(qdev, i, &data)) {
			FUNC1(qdev, drv, qdev->ndev,
				  "Error reading status register 0x%.04x.\n",
				  i);
			goto end;
		} else
			*iter = data;
		iter++;
	}

	/*
	 * Get RX statistics.
	 */
	for (i = 0x300; i < 0x3d0; i += 8) {
		if (FUNC2(qdev, i, &data)) {
			FUNC1(qdev, drv, qdev->ndev,
				  "Error reading status register 0x%.04x.\n",
				  i);
			goto end;
		} else
			*iter = data;
		iter++;
	}

	/*
	 * Get Per-priority TX pause frame counter statistics.
	 */
	for (i = 0x500; i < 0x540; i += 8) {
		if (FUNC2(qdev, i, &data)) {
			FUNC1(qdev, drv, qdev->ndev,
				  "Error reading status register 0x%.04x.\n",
				  i);
			goto end;
		} else
			*iter = data;
		iter++;
	}

	/*
	 * Get Per-priority RX pause frame counter statistics.
	 */
	for (i = 0x568; i < 0x5a8; i += 8) {
		if (FUNC2(qdev, i, &data)) {
			FUNC1(qdev, drv, qdev->ndev,
				  "Error reading status register 0x%.04x.\n",
				  i);
			goto end;
		} else
			*iter = data;
		iter++;
	}

	/*
	 * Get RX NIC FIFO DROP statistics.
	 */
	if (FUNC2(qdev, 0x5b8, &data)) {
		FUNC1(qdev, drv, qdev->ndev,
			  "Error reading status register 0x%.04x.\n", i);
		goto end;
	} else
		*iter = data;
end:
	FUNC4(qdev, qdev->xg_sem_mask);
quit:
	FUNC6(&qdev->stats_lock);

	FUNC0(qdev);

	return;
}