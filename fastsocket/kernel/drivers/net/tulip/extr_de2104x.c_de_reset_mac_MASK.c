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
struct de_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BusMode ; 
 int /*<<< orphan*/  CmdReset ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  MacStatus ; 
 int RxState ; 
 int TxState ; 
 int /*<<< orphan*/  de_bus_mode ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (struct de_private *de)
{
	u32 status, tmp;

	/*
	 * Reset MAC.  de4x5.c and tulip.c examined for "advice"
	 * in this area.
	 */

	if (FUNC0(BusMode) == 0xffffffff)
		return -EBUSY;

	/* Reset the chip, holding bit 0 set at least 50 PCI cycles. */
	FUNC1 (BusMode, CmdReset);
	FUNC2 (1);

	FUNC1 (BusMode, de_bus_mode);
	FUNC2 (1);

	for (tmp = 0; tmp < 5; tmp++) {
		FUNC0 (BusMode);
		FUNC2 (1);
	}

	FUNC2 (1);

	status = FUNC0(MacStatus);
	if (status & (RxState | TxState))
		return -EBUSY;
	if (status == 0xffffffff)
		return -ENODEV;
	return 0;
}