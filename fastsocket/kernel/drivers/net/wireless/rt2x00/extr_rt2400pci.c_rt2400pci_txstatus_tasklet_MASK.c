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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  irqmask_lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR8 ; 
 int /*<<< orphan*/  CSR8_TXDONE_ATIMRING ; 
 int /*<<< orphan*/  CSR8_TXDONE_PRIORING ; 
 int /*<<< orphan*/  CSR8_TXDONE_TXRING ; 
 int /*<<< orphan*/  DEVICE_STATE_ENABLED_RADIO ; 
 int /*<<< orphan*/  QID_AC_VI ; 
 int /*<<< orphan*/  QID_AC_VO ; 
 int /*<<< orphan*/  QID_ATIM ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
	u32 reg;

	/*
	 * Handle all tx queues.
	 */
	FUNC0(rt2x00dev, QID_ATIM);
	FUNC0(rt2x00dev, QID_AC_VO);
	FUNC0(rt2x00dev, QID_AC_VI);

	/*
	 * Enable all TXDONE interrupts again.
	 */
	if (FUNC6(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags)) {
		FUNC4(&rt2x00dev->irqmask_lock);

		FUNC2(rt2x00dev, CSR8, &reg);
		FUNC1(&reg, CSR8_TXDONE_TXRING, 0);
		FUNC1(&reg, CSR8_TXDONE_ATIMRING, 0);
		FUNC1(&reg, CSR8_TXDONE_PRIORING, 0);
		FUNC3(rt2x00dev, CSR8, reg);

		FUNC5(&rt2x00dev->irqmask_lock);
	}
}