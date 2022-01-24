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
 long FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (long,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,long,int,int) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(int cpuid, int vector, int delivery_mode, int redirect)
{
	long physid;
	int nasid;

	physid = FUNC0(cpuid);
	nasid = FUNC1(cpuid);

	/* the following is used only when starting cpus at boot time */
	if (FUNC4(nasid == -1))
		FUNC2(physid, &nasid, NULL, NULL);

	FUNC3(nasid, physid, vector, delivery_mode);
}