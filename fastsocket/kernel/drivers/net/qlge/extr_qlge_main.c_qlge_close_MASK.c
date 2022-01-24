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
struct ql_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  ndev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ADAPTER_UP ; 
 int /*<<< orphan*/  QL_EEH_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ql_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	struct ql_adapter *qdev = FUNC2(ndev);

	/* If we hit pci_channel_io_perm_failure
	 * failure condition, then we already
	 * brought the adapter down.
	 */
	if (FUNC6(QL_EEH_FATAL, &qdev->flags)) {
		FUNC3(qdev, drv, qdev->ndev, "EEH fatal did unload.\n");
		FUNC0(QL_EEH_FATAL, &qdev->flags);
		return 0;
	}

	/*
	 * Wait for device to recover from a reset.
	 * (Rarely happens, but possible.)
	 */
	while (!FUNC6(QL_ADAPTER_UP, &qdev->flags))
		FUNC1(1);
	FUNC4(qdev);
	FUNC5(qdev);
	return 0;
}