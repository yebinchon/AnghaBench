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
struct qlcnic_adapter {int /*<<< orphan*/  state; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct qlcnic_adapter* FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct pci_dev *dev, int num_vfs)
{
	struct qlcnic_adapter *adapter = FUNC1(dev);
	int err;

	if (FUNC4(__QLCNIC_RESETTING, &adapter->state))
		return -EBUSY;

	if (num_vfs == 0)
		err = FUNC2(adapter);
	else
		err = FUNC3(adapter, num_vfs);

	FUNC0(__QLCNIC_RESETTING, &adapter->state);
	return err;
}