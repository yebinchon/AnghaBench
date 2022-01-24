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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long SDRAM_CONFIG_BANK_ENABLE ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * sdram_bxcr ; 

void FUNC5(void)
{
	int i;
	unsigned long memsize, bank_config;

	memsize = 0;
	for (i = 0; i < FUNC0(sdram_bxcr); i++) {
		bank_config = FUNC1(sdram_bxcr[i]);
		if (bank_config & SDRAM_CONFIG_BANK_ENABLE)
			memsize += FUNC2(bank_config);
	}

	memsize = FUNC3(memsize);
	FUNC4(0, memsize);
}