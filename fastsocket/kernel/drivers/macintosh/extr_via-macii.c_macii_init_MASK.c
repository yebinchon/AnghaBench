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
 int /*<<< orphan*/  IRQ_FLG_LOCK ; 
 int /*<<< orphan*/  IRQ_MAC_ADB ; 
 int /*<<< orphan*/  idle ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  macii_interrupt ; 
 int /*<<< orphan*/  macii_state ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC4(void)
{
	unsigned long flags;
	int err;
	
	FUNC1(flags);
	
	err = FUNC2();
	if (err) goto out;

	err = FUNC3(IRQ_MAC_ADB, macii_interrupt, IRQ_FLG_LOCK, "ADB",
			  macii_interrupt);
	if (err) goto out;

	macii_state = idle;
out:
	FUNC0(flags);
	return err;
}