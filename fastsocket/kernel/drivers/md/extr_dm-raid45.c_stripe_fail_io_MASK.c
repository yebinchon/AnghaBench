#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stripe_chunk {struct bio_list* bl; } ;
struct stripe {int /*<<< orphan*/  sc; } ;
struct TYPE_2__ {unsigned int raid_devs; } ;
struct raid_set {TYPE_1__ set; } ;
struct bio_list {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct stripe_chunk* FUNC2 (struct stripe*,unsigned int) ; 
 int /*<<< orphan*/  EIO ; 
 struct raid_set* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe*,struct bio_list*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC7 (struct stripe*) ; 

__attribute__((used)) static void FUNC8(struct stripe *stripe)
{
	struct raid_set *rs = FUNC3(stripe->sc);
	unsigned p = rs->set.raid_devs;

	while (p--) {
		struct stripe_chunk *chunk = FUNC2(stripe, p);
		int i = FUNC0(chunk->bl);

		/* Fail all bios on all bio lists of the stripe. */
		while (i--) {
			struct bio_list *bl = chunk->bl + i;

			if (!FUNC4(bl))
				FUNC5(stripe, bl, p, -EIO);
		}
	}

	/* Put stripe on LRU list. */
	FUNC1(FUNC6(stripe));
	FUNC1(FUNC7(stripe));
}