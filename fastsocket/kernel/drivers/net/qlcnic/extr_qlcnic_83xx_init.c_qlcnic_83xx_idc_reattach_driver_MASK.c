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
struct qlcnic_adapter {TYPE_1__* nic_ops; } ;
struct TYPE_2__ {scalar_t__ (* init_driver ) (struct qlcnic_adapter*) ;} ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int) ; 
 int FUNC5 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC7(struct qlcnic_adapter *adapter)
{
	int err;

	/* register for NIC IDC AEN Events */
	FUNC4(adapter, 1);

	err = FUNC5(adapter);
	if (err)
		return err;

	FUNC1(adapter);

	if (FUNC0(adapter)) {
		FUNC3(adapter, 1);
		return -EIO;
	}

	if (adapter->nic_ops->init_driver(adapter)) {
		FUNC3(adapter, 1);
		return -EIO;
	}

	FUNC2(adapter);

	return 0;
}