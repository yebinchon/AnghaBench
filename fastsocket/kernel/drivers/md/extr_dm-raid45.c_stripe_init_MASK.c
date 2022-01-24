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
struct stripe_chunk {scalar_t__ bl; struct stripe* stripe; int /*<<< orphan*/  cnt; } ;
struct stripe_cache {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pending; int /*<<< orphan*/  size; } ;
struct stripe {TYPE_2__ io; int /*<<< orphan*/  cnt; scalar_t__ lists; struct stripe_cache* sc; } ;
struct TYPE_4__ {unsigned int raid_devs; int /*<<< orphan*/  io_size; } ;
struct TYPE_6__ {TYPE_1__ set; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 struct stripe_chunk* FUNC1 (struct stripe*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_3__* FUNC3 (struct stripe_cache*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe*) ; 

__attribute__((used)) static void FUNC7(struct stripe_cache *sc, struct stripe *stripe)
{
	unsigned i, p = FUNC3(sc)->set.raid_devs;

	/* Work all io chunks. */
	while (p--) {
		struct stripe_chunk *chunk = FUNC1(stripe, p);

		FUNC4(&chunk->cnt, 0);
		chunk->stripe = stripe;
		i = FUNC0(chunk->bl);
		while (i--)
			FUNC5(chunk->bl + i);
	}

	stripe->sc = sc;

	i = FUNC0(stripe->lists);
	while (i--)
		FUNC2(stripe->lists + i);

	stripe->io.size = FUNC3(sc)->set.io_size;
	FUNC4(&stripe->cnt, 0);
	FUNC4(&stripe->io.pending, 0);
	FUNC6(stripe);
}