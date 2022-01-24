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

/* Variables and functions */
 int MAX_QUICK_PIT_ITERATIONS ; 
 unsigned long PIT_TICK_RATE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static unsigned long FUNC6(void)
{
	int i;
	u64 tsc, delta;
	unsigned long d1, d2;

	/* Set the Gate high, disable speaker */
	FUNC2((FUNC1(0x61) & ~0x02) | 0x01, 0x61);

	/*
	 * Counter 2, mode 0 (one-shot), binary count
	 *
	 * NOTE! Mode 2 decrements by two (and then the
	 * output is flipped each time, giving the same
	 * final output frequency as a decrement-by-one),
	 * so mode 0 is much better when looking at the
	 * individual counts.
	 */
	FUNC2(0xb0, 0x43);

	/* Start at 0xffff */
	FUNC2(0xff, 0x42);
	FUNC2(0xff, 0x42);

	/*
	 * The PIT starts counting at the next edge, so we
	 * need to delay for a microsecond. The easiest way
	 * to do that is to just read back the 16-bit counter
	 * once from the PIT.
	 */
	FUNC4(0);

	if (FUNC3(0xff, &tsc, &d1)) {
		for (i = 1; i <= MAX_QUICK_PIT_ITERATIONS; i++) {
			if (!FUNC3(0xff-i, &delta, &d2))
				break;

			/*
			 * Iterate until the error is less than 500 ppm
			 */
			delta -= tsc;
			if (d1+d2 >= delta >> 11)
				continue;

			/*
			 * Check the PIT one more time to verify that
			 * all TSC reads were stable wrt the PIT.
			 *
			 * This also guarantees serialization of the
			 * last cycle read ('d2') in pit_expect_msb.
			 */
			if (!FUNC4(0xfe - i))
				break;
			goto success;
		}
	}
	FUNC5("Fast TSC calibration failed\n");
	return 0;

success:
	/*
	 * Ok, if we get here, then we've seen the
	 * MSB of the PIT decrement 'i' times, and the
	 * error has shrunk to less than 500 ppm.
	 *
	 * As a result, we can depend on there not being
	 * any odd delays anywhere, and the TSC reads are
	 * reliable (within the error).
	 *
	 * kHz = ticks / time-in-seconds / 1000;
	 * kHz = (t2 - t1) / (I * 256 / PIT_TICK_RATE) / 1000
	 * kHz = ((t2 - t1) * PIT_TICK_RATE) / (I * 256 * 1000)
	 */
	delta *= PIT_TICK_RATE;
	FUNC0(delta, i*256*1000);
	FUNC5("Fast TSC calibration using PIT\n");
	return delta;
}