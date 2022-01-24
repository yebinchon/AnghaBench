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
 int /*<<< orphan*/ * iSeries_smp_message ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	int cpu = FUNC2();
	int msg;

	if (FUNC0() < 2)
		return;

	for (msg = 0; msg < 4; msg++)
		if (FUNC3(msg, &iSeries_smp_message[cpu]))
			FUNC1(msg);
}