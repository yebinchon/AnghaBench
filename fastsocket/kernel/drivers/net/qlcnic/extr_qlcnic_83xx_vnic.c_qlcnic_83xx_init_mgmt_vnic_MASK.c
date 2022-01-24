#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_adapter {int flags; TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int msix_supported; int /*<<< orphan*/  fw_hal_version; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int QLCNIC_ADAPTER_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC7 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_use_msi_x ; 

__attribute__((used)) static int FUNC9(struct qlcnic_adapter *adapter)
{
	int err = -EIO;

	FUNC3(adapter);
	if (!(adapter->flags & QLCNIC_ADAPTER_INITIALIZED)) {
		if (FUNC6(adapter))
			return err;

		if (FUNC5(adapter))
			return err;

		if (FUNC8(adapter))
			return err;
	} else {
		if (FUNC7(adapter))
			return err;
	}

	if (FUNC4(adapter))
		return err;

	FUNC1(adapter);
	adapter->ahw->msix_supported = !!qlcnic_use_msi_x;
	adapter->flags |= QLCNIC_ADAPTER_INITIALIZED;
	FUNC2(adapter, 1);

	FUNC0(&adapter->pdev->dev, "HAL Version: %d, Management function\n",
		 adapter->ahw->fw_hal_version);

	return 0;
}