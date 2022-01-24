#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct stripe {TYPE_1__ io; int /*<<< orphan*/  sc; } ;
struct TYPE_5__ {unsigned int raid_devs; } ;
struct TYPE_6__ {TYPE_2__ set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stripe*,unsigned int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int XOR_SPEED_TICKS ; 
 int /*<<< orphan*/  FUNC3 (struct stripe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static unsigned FUNC5(struct stripe *stripe)
{
	int ticks = XOR_SPEED_TICKS;
	unsigned p = FUNC1(stripe->sc)->set.raid_devs, r = 0;
	unsigned long j;

	/* Set uptodate so that common_xor()->xor() will belabour chunks. */
	while (p--)
		FUNC2(FUNC0(stripe, p));

	/* Wait for next tick. */
	for (j = jiffies; j == jiffies; );

	/* Do xors for a few ticks. */
	while (ticks--) {
		unsigned xors = 0;

		for (j = jiffies; j == jiffies; ) {
			FUNC4();
			FUNC3(stripe, stripe->io.size, 0, 0);
			FUNC4();
			xors++;
			FUNC4();
		}

		if (xors > r)
			r = xors;
	}

	return r;
}