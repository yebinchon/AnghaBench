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
struct qlcnic_adapter {int /*<<< orphan*/  ahw; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  QLCNIC_DEV_NPAR_OPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_VNIC_STATE ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 

int FUNC3(struct qlcnic_adapter *adapter, int lock)
{
	if (lock) {
		if (FUNC1(adapter))
			return -EBUSY;
	}
	FUNC0(adapter->ahw, QLC_83XX_VNIC_STATE, QLCNIC_DEV_NPAR_OPER);
	if (lock)
		FUNC2(adapter);

	return 0;
}