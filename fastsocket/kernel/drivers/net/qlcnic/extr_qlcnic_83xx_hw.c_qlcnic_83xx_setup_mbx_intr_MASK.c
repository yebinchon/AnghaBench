#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_adapter {int flags; TYPE_3__* pdev; TYPE_2__* msix_entries; TYPE_1__* ahw; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  vector; } ;
struct TYPE_4__ {int num_msix; } ;

/* Variables and functions */
 unsigned long IRQF_SHARED ; 
 int QLCNIC_MSIX_ENABLED ; 
 int QLCNIC_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_83xx_handle_aen ; 
 int /*<<< orphan*/  qlcnic_83xx_intr ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,char*,struct qlcnic_adapter*) ; 

int FUNC4(struct qlcnic_adapter *adapter)
{
	irq_handler_t handler;
	u32 val;
	int err = 0;
	unsigned long flags = 0;

	if (!(adapter->flags & QLCNIC_MSI_ENABLED) &&
	    !(adapter->flags & QLCNIC_MSIX_ENABLED))
		flags |= IRQF_SHARED;

	if (adapter->flags & QLCNIC_MSIX_ENABLED) {
		handler = qlcnic_83xx_handle_aen;
		val = adapter->msix_entries[adapter->ahw->num_msix - 1].vector;
		err = FUNC3(val, handler, flags, "qlcnic-MB", adapter);
		if (err) {
			FUNC0(&adapter->pdev->dev,
				"failed to register MBX interrupt\n");
			return err;
		}
	} else {
		handler = qlcnic_83xx_intr;
		val = adapter->msix_entries[0].vector;
		err = FUNC3(val, handler, flags, "qlcnic", adapter);
		if (err) {
			FUNC0(&adapter->pdev->dev,
				"failed to register INTx interrupt\n");
			return err;
		}
		FUNC1(adapter);
	}

	/* Enable mailbox interrupt */
	FUNC2(adapter);

	return err;
}