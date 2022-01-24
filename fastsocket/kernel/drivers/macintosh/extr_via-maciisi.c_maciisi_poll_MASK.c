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
 int /*<<< orphan*/  ADB_DELAY ; 
 size_t IFR ; 
 int SR_INT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int* via ; 

void
FUNC4(void)
{
	unsigned long flags;

	FUNC1(flags);
	if (via[IFR] & SR_INT) {
		FUNC2(0, NULL);
	}
	else /* avoid calling this function too quickly in a loop */
		FUNC3(ADB_DELAY);

	FUNC0(flags);
}