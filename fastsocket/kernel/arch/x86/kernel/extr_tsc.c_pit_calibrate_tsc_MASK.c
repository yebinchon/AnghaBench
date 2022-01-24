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
typedef  unsigned long u64 ;
typedef  int u32 ;

/* Variables and functions */
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 () ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static unsigned long FUNC4(u32 latch, unsigned long ms, int loopmin)
{
	u64 tsc, t1, t2, delta;
	unsigned long tscmin, tscmax;
	int pitcnt;

	/* Set the Gate high, disable speaker */
	FUNC3((FUNC2(0x61) & ~0x02) | 0x01, 0x61);

	/*
	 * Setup CTC channel 2* for mode 0, (interrupt on terminal
	 * count mode), binary count. Set the latch register to 50ms
	 * (LSB then MSB) to begin countdown.
	 */
	FUNC3(0xb0, 0x43);
	FUNC3(latch & 0xff, 0x42);
	FUNC3(latch >> 8, 0x42);

	tsc = t1 = t2 = FUNC1();

	pitcnt = 0;
	tscmax = 0;
	tscmin = ULONG_MAX;
	while ((FUNC2(0x61) & 0x20) == 0) {
		t2 = FUNC1();
		delta = t2 - tsc;
		tsc = t2;
		if ((unsigned long) delta < tscmin)
			tscmin = (unsigned int) delta;
		if ((unsigned long) delta > tscmax)
			tscmax = (unsigned int) delta;
		pitcnt++;
	}

	/*
	 * Sanity checks:
	 *
	 * If we were not able to read the PIT more than loopmin
	 * times, then we have been hit by a massive SMI
	 *
	 * If the maximum is 10 times larger than the minimum,
	 * then we got hit by an SMI as well.
	 */
	if (pitcnt < loopmin || tscmax > 10 * tscmin)
		return ULONG_MAX;

	/* Calculate the PIT value */
	delta = t2 - t1;
	FUNC0(delta, ms);
	return delta;
}