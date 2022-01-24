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
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__ idc; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_BC_CMD_CHANNEL_INIT ; 
 int /*<<< orphan*/  QLCNIC_BC_CMD_CHANNEL_TERM ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 (struct qlcnic_adapter*,int) ; 
 int FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter)
{
	int err;

	FUNC4(QLC_83XX_MBX_READY, &adapter->ahw->idc.status);
	FUNC0(adapter);

	err = FUNC1(adapter, 1);
	if (err)
		return err;

	err = FUNC2(adapter, QLCNIC_BC_CMD_CHANNEL_INIT);
	if (err)
		goto err_out_cleanup_bc_intr;

	err = FUNC3(adapter);
	if (err)
		goto err_out_term_channel;

	return 0;

err_out_term_channel:
	FUNC2(adapter, QLCNIC_BC_CMD_CHANNEL_TERM);

err_out_cleanup_bc_intr:
	FUNC1(adapter, 0);
	return err;
}