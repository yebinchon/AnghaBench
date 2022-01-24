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
struct qlcnic_adapter {scalar_t__ is_up; struct pci_dev* pdev; struct net_device* netdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 
 int FUNC6 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int FUNC8 (struct qlcnic_adapter*) ; 

int
FUNC9(struct qlcnic_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	int err;

	if (adapter->is_up == QLCNIC_ADAPTER_UP_MAGIC)
		return 0;

	err = FUNC6(adapter, netdev);
	if (err)
		return err;

	err = FUNC2(adapter);
	if (err) {
		FUNC0(&pdev->dev, "Error in setting sw resources\n");
		goto err_out_napi_del;
	}

	err = FUNC1(adapter);
	if (err) {
		FUNC0(&pdev->dev, "Error in setting hw resources\n");
		goto err_out_free_sw;
	}

	err = FUNC8(adapter);
	if (err) {
		FUNC0(&pdev->dev, "failed to setup interrupt\n");
		goto err_out_free_hw;
	}

	FUNC3(adapter);

	adapter->is_up = QLCNIC_ADAPTER_UP_MAGIC;
	return 0;

err_out_free_hw:
	FUNC4(adapter);
err_out_free_sw:
	FUNC5(adapter);
err_out_napi_del:
	FUNC7(adapter);
	return err;
}