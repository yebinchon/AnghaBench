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
 unsigned int NR_TLB_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

void FUNC2(void)
{
	unsigned int i;

	FUNC0("ID  V G ASID VPN   PFN   AP SZ C B W D\n");
	for (i = 0; i < NR_TLB_ENTRIES; i++)
		FUNC1(i);
}