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
 unsigned int CCNT ; 
 int PMCR_E ; 
 unsigned int PMN0 ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(void)
{
	unsigned int cnt;

	FUNC2(FUNC0() & ~PMCR_E);

	for (cnt = PMN0; cnt <= CCNT; cnt++)
		FUNC1(cnt);

	return 0;
}