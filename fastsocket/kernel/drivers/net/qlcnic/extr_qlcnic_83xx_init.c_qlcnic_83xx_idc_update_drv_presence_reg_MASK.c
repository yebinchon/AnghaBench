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
typedef  int u32 ;
struct qlcnic_adapter {int portnum; int /*<<< orphan*/  ahw; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DRV_PRESENCE ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC5(struct qlcnic_adapter *adapter,
					int status, int lock)
{
	u32 val;

	if (lock) {
		if (FUNC3(adapter))
			return -EBUSY;
	}

	val = FUNC0(adapter->ahw, QLC_83XX_IDC_DRV_PRESENCE);

	if (status)
		val = val | (1 << adapter->portnum);
	else
		val = val & ~(1 << adapter->portnum);

	FUNC1(adapter->ahw, QLC_83XX_IDC_DRV_PRESENCE, val);
	FUNC2(adapter);

	if (lock)
		FUNC4(adapter);

	return 0;
}