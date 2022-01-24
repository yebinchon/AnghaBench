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
struct TYPE_6__ {int err_code; int /*<<< orphan*/  status; } ;
struct qlcnic_hardware_context {TYPE_3__ idc; int /*<<< orphan*/  mbx_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  work; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; TYPE_2__ fw_work; int /*<<< orphan*/  idc_aen_work; TYPE_1__* nic_ops; } ;
struct TYPE_4__ {scalar_t__ (* init_driver ) (struct qlcnic_adapter*) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_83xx_idc_aen_work ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC9 (struct qlcnic_adapter*) ; 
 int FUNC10 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct qlcnic_adapter*) ; 

int FUNC14(struct qlcnic_adapter *adapter, int pci_using_dac)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	if (FUNC9(adapter))
		return FUNC10(adapter, pci_using_dac);

	if (FUNC1(adapter))
		return -EIO;

	/* Initilaize 83xx mailbox spinlock */
	FUNC12(&ahw->mbx_lock);

	FUNC11(QLC_83XX_MBX_READY, &adapter->ahw->idc.status);
	FUNC2(adapter);

	/* register for NIC IDC AEN Events */
	FUNC8(adapter, 1);

	if (!FUNC6(adapter))
		FUNC7(adapter);

	if (FUNC4(adapter))
		return -EIO;

	/* Configure default, SR-IOV or Virtual NIC mode of operation */
	if (FUNC3(adapter))
		return -EIO;

	/* Perform operating mode specific initialization */
	if (adapter->nic_ops->init_driver(adapter))
		return -EIO;

	FUNC0(&adapter->idc_aen_work, qlcnic_83xx_idc_aen_work);

	/* Periodically monitor device status */
	FUNC5(&adapter->fw_work.work);

	return adapter->ahw->idc.err_code;
}