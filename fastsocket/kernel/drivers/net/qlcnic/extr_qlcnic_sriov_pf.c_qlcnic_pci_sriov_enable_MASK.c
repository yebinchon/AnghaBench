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
struct qlcnic_adapter {int flags; int /*<<< orphan*/  portnum; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int QLCNIC_MSIX_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct net_device*) ; 
 int FUNC1 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC7(struct qlcnic_adapter *adapter, int num_vfs)
{
	struct net_device *netdev = adapter->netdev;
	int err;

	if (!(adapter->flags & QLCNIC_MSIX_ENABLED)) {
		FUNC3(netdev,
			   "SR-IOV cannot be enabled, when legacy interrupts are enabled\n");
		return -EIO;
	}

	if (FUNC5(netdev))
		FUNC0(adapter, netdev);

	err = FUNC1(adapter, num_vfs);
	if (err) {
		FUNC4(netdev, "Failed to enable SR-IOV on port %d\n",
			    adapter->portnum);

		err = -EIO;
		if (FUNC6(adapter))
			goto error;
	} else {
		FUNC4(netdev,
			    "SR-IOV is enabled successfully on port %d\n",
			    adapter->portnum);
		/* Return number of vfs enabled */
		err = num_vfs;
	}
	if (FUNC5(netdev))
		FUNC2(adapter, netdev);

error:
	return err;
}