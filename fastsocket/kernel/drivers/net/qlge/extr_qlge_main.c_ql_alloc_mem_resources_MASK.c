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
struct ql_adapter {int rx_ring_count; int tx_ring_count; int /*<<< orphan*/  ndev; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/ * rx_ring; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ql_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ql_adapter*) ; 
 scalar_t__ FUNC3 (struct ql_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*) ; 

__attribute__((used)) static int FUNC5(struct ql_adapter *qdev)
{
	int i;

	/* Allocate space for our shadow registers and such. */
	if (FUNC2(qdev))
		return -ENOMEM;

	for (i = 0; i < qdev->rx_ring_count; i++) {
		if (FUNC1(qdev, &qdev->rx_ring[i]) != 0) {
			FUNC0(qdev, ifup, qdev->ndev,
				  "RX resource allocation failed.\n");
			goto err_mem;
		}
	}
	/* Allocate tx queue resources */
	for (i = 0; i < qdev->tx_ring_count; i++) {
		if (FUNC3(qdev, &qdev->tx_ring[i]) != 0) {
			FUNC0(qdev, ifup, qdev->ndev,
				  "TX resource allocation failed.\n");
			goto err_mem;
		}
	}
	return 0;

err_mem:
	FUNC4(qdev);
	return -ENOMEM;
}