#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stripe_chunk {int dummy; } ;
struct TYPE_4__ {unsigned int parity; } ;
struct stripe {int /*<<< orphan*/  sc; TYPE_2__ idx; } ;
struct TYPE_3__ {unsigned int raid_devs; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stripe_chunk*) ; 
 struct raid_set* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_PROHIBITCHUNKIO ; 
 int /*<<< orphan*/  FUNC2 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct stripe_chunk*) ; 
 struct stripe_chunk* FUNC5 (struct stripe*,unsigned int,unsigned int*) ; 

__attribute__((used)) static void FUNC6(struct stripe *stripe)
{
	struct raid_set *rs = FUNC1(stripe->sc);
	unsigned dummy = 0, p = rs->set.raid_devs;

	/* Walk all chunks. */
	while (p--) {
		struct stripe_chunk *chunk =
			FUNC5(stripe, p, &dummy);

		if (!chunk)
			continue;

		/* If parity or any bios pending -> allow io. */
		if (FUNC4(chunk) || p == stripe->idx.parity)
			FUNC2(chunk);
		else {
			FUNC0(chunk);
			/* REMOVEME: statistics. */
			FUNC3(FUNC1(stripe->sc)->stats + S_PROHIBITCHUNKIO);
		}
	}
}