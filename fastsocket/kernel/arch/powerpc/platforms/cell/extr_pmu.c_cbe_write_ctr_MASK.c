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

/* Variables and functions */
 int NR_PHYS_CTRS ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

void FUNC3(u32 cpu, u32 ctr, u32 val)
{
	u32 phys_ctr;
	u32 phys_val;

	phys_ctr = ctr & (NR_PHYS_CTRS - 1);

	if (FUNC0(cpu, phys_ctr) == 16) {
		phys_val = FUNC1(cpu, phys_ctr);

		if (ctr < NR_PHYS_CTRS)
			val = (val << 16) | (phys_val & 0xffff);
		else
			val = (val & 0xffff) | (phys_val & 0xffff0000);
	}

	FUNC2(cpu, phys_ctr, val);
}