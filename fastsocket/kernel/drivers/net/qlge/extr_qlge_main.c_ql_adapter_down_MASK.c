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
struct ql_adapter {int rss_ring_count; int /*<<< orphan*/  func; int /*<<< orphan*/  ndev; TYPE_1__* rx_ring; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ADAPTER_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ql_adapter*) ; 

__attribute__((used)) static int FUNC10(struct ql_adapter *qdev)
{
	int i, status = 0;

	FUNC8(qdev);

	FUNC5(qdev);

	for (i = 0; i < qdev->rss_ring_count; i++)
		FUNC1(&qdev->rx_ring[i].napi);

	FUNC0(QL_ADAPTER_UP, &qdev->flags);

	FUNC6(qdev);

	FUNC9(qdev);

	/* Call netif_napi_del() from common point.
	 */
	for (i = 0; i < qdev->rss_ring_count; i++)
		FUNC3(&qdev->rx_ring[i].napi);

	status = FUNC4(qdev);
	if (status)
		FUNC2(qdev, ifdown, qdev->ndev, "reset(func #%d) FAILED!\n",
			  qdev->func);
	FUNC7(qdev);
	return status;
}