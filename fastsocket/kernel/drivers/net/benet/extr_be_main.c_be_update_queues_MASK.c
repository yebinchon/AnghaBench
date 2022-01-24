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
struct net_device {int dummy; } ;
struct be_adapter {int /*<<< orphan*/  num_msix_roce_vec; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 
 int FUNC4 (struct be_adapter*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct be_adapter*) ; 
 int FUNC7 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct be_adapter*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 

int FUNC10(struct be_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int status;

	if (FUNC9(netdev))
		FUNC2(netdev);

	FUNC0(adapter);

	/* If any vectors have been shared with RoCE we cannot re-program
	 * the MSIx table.
	 */
	if (!adapter->num_msix_roce_vec)
		FUNC3(adapter);

	FUNC1(adapter);

	if (!FUNC8(adapter)) {
		status = FUNC4(adapter);
		if (status)
			return status;
	}

	status = FUNC7(adapter);
	if (status)
		return status;

	FUNC6(adapter);

	if (FUNC9(netdev))
		status = FUNC5(netdev);

	return status;
}