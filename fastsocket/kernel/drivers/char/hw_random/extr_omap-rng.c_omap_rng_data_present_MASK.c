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
struct hwrng {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNG_STAT_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct hwrng *rng, int wait)
{
	int data, i;

	for (i = 0; i < 20; i++) {
		data = FUNC0(RNG_STAT_REG) ? 0 : 1;
		if (data || !wait)
			break;
		/* RNG produces data fast enough (2+ MBit/sec, even
		 * during "rngtest" loads, that these delays don't
		 * seem to trigger.  We *could* use the RNG IRQ, but
		 * that'd be higher overhead ... so why bother?
		 */
		FUNC1(10);
	}
	return data;
}