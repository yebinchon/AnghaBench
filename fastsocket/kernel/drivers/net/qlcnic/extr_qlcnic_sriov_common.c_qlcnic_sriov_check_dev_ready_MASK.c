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
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {scalar_t__ fw_fail_cnt; int /*<<< orphan*/  ahw; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ QLC_83XX_IDC_DEV_READY ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DEV_STATE ; 
 scalar_t__ QLC_BC_CMD_MAX_RETRY_CNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct qlcnic_adapter *adapter)
{
	u32 state;

	do {
		FUNC1(20);
		if (++adapter->fw_fail_cnt > QLC_BC_CMD_MAX_RETRY_CNT)
			return -EIO;
		state = FUNC0(adapter->ahw, QLC_83XX_IDC_DEV_STATE);
	} while (state != QLC_83XX_IDC_DEV_READY);

	return 0;
}