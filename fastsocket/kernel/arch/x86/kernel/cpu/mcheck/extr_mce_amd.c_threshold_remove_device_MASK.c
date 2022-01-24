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
 unsigned int NR_BANKS ; 
 int /*<<< orphan*/  bank_map ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int cpu)
{
	unsigned int bank;

	for (bank = 0; bank < NR_BANKS; ++bank) {
		if (!(FUNC0(bank_map, cpu) & (1 << bank)))
			continue;
		FUNC1(cpu, bank);
	}
}