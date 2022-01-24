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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ quiesce_req; scalar_t__ collect_dump; int /*<<< orphan*/  status; scalar_t__ (* state_entry ) (struct qlcnic_adapter*) ;} ;
struct qlcnic_hardware_context {scalar_t__ temp; TYPE_2__ idc; scalar_t__ reset_context; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_FW_HANG ; 
 scalar_t__ QLCNIC_TEMP_PANIC ; 
 int FUNC0 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_IDC_CTRL ; 
 int QLC_83XX_IDC_DISABLE_FW_RESET_RECOVERY ; 
 int QLC_83XX_IDC_GRACEFULL_RESET ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC14(struct qlcnic_adapter *adapter)
{
	u32 val;
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int ret = 0;

	/* Perform NIC configuration based ready state entry actions */
	if (ahw->idc.state_entry(adapter))
		return -EIO;

	if (FUNC11(adapter)) {
		if (ahw->temp == QLCNIC_TEMP_PANIC) {
			FUNC4(adapter);
			FUNC2(&adapter->pdev->dev,
				"Error: device temperature %d above limits\n",
				adapter->ahw->temp);
			FUNC1(QLC_83XX_MBX_READY, &ahw->idc.status);
			FUNC12(__QLCNIC_RESETTING, &adapter->state);
			FUNC5(adapter);
			FUNC6(adapter, 1);
			return -EIO;
		}
	}

	val = FUNC0(adapter->ahw, QLC_83XX_IDC_CTRL);
	ret = FUNC3(adapter);
	if (ret) {
		adapter->flags |= QLCNIC_FW_HANG;
		if (!(val & QLC_83XX_IDC_DISABLE_FW_RESET_RECOVERY)) {
			FUNC1(QLC_83XX_MBX_READY, &ahw->idc.status);
			FUNC12(__QLCNIC_RESETTING, &adapter->state);
			FUNC8(adapter, 1);
		}
		return -EIO;
	}

	if ((val & QLC_83XX_IDC_GRACEFULL_RESET) || ahw->idc.collect_dump) {
		/* Move to need reset state and prepare for reset */
		FUNC8(adapter, 1);
		return ret;
	}

	/* Check for soft reset request */
	if (ahw->reset_context &&
	    !(val & QLC_83XX_IDC_DISABLE_FW_RESET_RECOVERY)) {
		adapter->ahw->reset_context = 0;
		FUNC9(adapter);
		return ret;
	}

	/* Move to need quiesce state if requested */
	if (adapter->ahw->idc.quiesce_req) {
		FUNC7(adapter, 1);
		FUNC10(adapter, 0, 1);
		return ret;
	}

	return ret;
}