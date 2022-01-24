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
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long ESTAR_MODE_DIV_2 ; 
 unsigned long ESTAR_MODE_DIV_MASK ; 
 int /*<<< orphan*/  HBIRD_ESTAR_MODE_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long estar, unsigned long new_bits,
			    unsigned long clock_tick,
			    unsigned long old_divisor, unsigned long divisor)
{
	unsigned long flags;

	FUNC3(flags);

	estar &= ~ESTAR_MODE_DIV_MASK;

	/* This is based upon the state transition diagram in the IIe manual.  */
	if (old_divisor == 2 && divisor == 1) {
		FUNC4(0);
		FUNC5(HBIRD_ESTAR_MODE_ADDR, estar | new_bits);
		FUNC1(0, clock_tick, old_divisor, divisor);
	} else if (old_divisor == 1 && divisor == 2) {
		FUNC1(1, clock_tick, old_divisor, divisor);
		FUNC5(HBIRD_ESTAR_MODE_ADDR, estar | new_bits);
		FUNC4(1);
	} else if (old_divisor == 1 && divisor > 2) {
		FUNC6(estar, ESTAR_MODE_DIV_2, clock_tick,
				1, 2);
		FUNC6(estar, new_bits, clock_tick,
				2, divisor);
	} else if (old_divisor > 2 && divisor == 1) {
		FUNC6(estar, ESTAR_MODE_DIV_2, clock_tick,
				old_divisor, 2);
		FUNC6(estar, new_bits, clock_tick,
				2, divisor);
	} else if (old_divisor < divisor) {
		FUNC1(0, clock_tick, old_divisor, divisor);
		FUNC5(HBIRD_ESTAR_MODE_ADDR, estar | new_bits);
	} else if (old_divisor > divisor) {
		FUNC5(HBIRD_ESTAR_MODE_ADDR, estar | new_bits);
		FUNC1(1, clock_tick, old_divisor, divisor);
	} else {
		FUNC0();
	}

	FUNC2(flags);
}