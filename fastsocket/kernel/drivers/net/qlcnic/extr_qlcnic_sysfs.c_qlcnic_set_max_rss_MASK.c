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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_adapter {TYPE_1__* pdev; int /*<<< orphan*/  msix_entries; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct net_device*) ; 
 int FUNC1 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct qlcnic_adapter*,int) ; 
 int FUNC12 (struct qlcnic_adapter*) ; 
 int FUNC13 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 

int FUNC20(struct qlcnic_adapter *adapter, u8 data, size_t len)
{
	int err;
	struct net_device *netdev = adapter->netdev;

	FUNC18();
	FUNC5(netdev);
	if (FUNC6(netdev))
		FUNC0(adapter, netdev);

	FUNC14(adapter);

	if (FUNC7(adapter)) {
		FUNC9(adapter);
		FUNC10(adapter);
	}

	FUNC17(adapter);
	err = FUNC16(adapter, data);
	if (err) {
		FUNC3(adapter->msix_entries);
		FUNC2(&adapter->pdev->dev, "failed to setup interrupt\n");
		return err;
	}

	if (FUNC7(adapter)) {
		/* Register for NIC IDC AEN Events */
		FUNC11(adapter, 1);

		err = FUNC12(adapter);
		FUNC8(adapter);
		if (err) {
			FUNC2(&adapter->pdev->dev,
				"failed to setup mbx interrupt\n");
			goto done;
		}
	}

	if (FUNC6(netdev)) {
		err = FUNC13(adapter);
		if (err)
			goto done;
		err = FUNC1(adapter, netdev);
		if (err)
			goto done;
		FUNC15(netdev, NETDEV_UP);
	}
	err = len;
 done:
	FUNC4(netdev);
	FUNC19();
	return err;

}