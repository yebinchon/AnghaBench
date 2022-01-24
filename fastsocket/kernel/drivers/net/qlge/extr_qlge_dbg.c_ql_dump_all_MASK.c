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
struct wqicb {int dummy; } ;
struct ql_adapter {int tx_ring_count; int rx_ring_count; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/ * tx_ring; } ;
struct cqicb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cqicb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wqicb*) ; 

void FUNC6(struct ql_adapter *qdev)
{
	int i;

	FUNC2(qdev);
	FUNC1(qdev);
	for (i = 0; i < qdev->tx_ring_count; i++) {
		FUNC4(&qdev->tx_ring[i]);
		FUNC5((struct wqicb *)&qdev->tx_ring[i]);
	}
	for (i = 0; i < qdev->rx_ring_count; i++) {
		FUNC3(&qdev->rx_ring[i]);
		FUNC0((struct cqicb *)&qdev->rx_ring[i]);
	}
}