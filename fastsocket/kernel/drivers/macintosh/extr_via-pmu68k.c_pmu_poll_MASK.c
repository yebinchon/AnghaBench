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

/* Variables and functions */
 int CB1_INT ; 
 size_t IFR ; 
 int /*<<< orphan*/  IRQ_MAC_ADB_CL ; 
 int /*<<< orphan*/  IRQ_MAC_ADB_SR ; 
 int SR_INT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* via1 ; 

void 
FUNC3(void)
{
	unsigned long flags;

	FUNC1(flags);
	if (via1[IFR] & SR_INT) {
		via1[IFR] = SR_INT;
		FUNC2(IRQ_MAC_ADB_SR, NULL);
	}
	if (via1[IFR] & CB1_INT) {
		via1[IFR] = CB1_INT;
		FUNC2(IRQ_MAC_ADB_CL, NULL);
	}
	FUNC0(flags);
}