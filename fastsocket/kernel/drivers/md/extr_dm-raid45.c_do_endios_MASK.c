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
struct stripe_cache {scalar_t__ lists; } ;
struct stripe {int dummy; } ;
struct raid_set {struct stripe_cache sc; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ LIST_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (struct raid_set*,struct stripe*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,scalar_t__) ; 
 struct stripe* FUNC3 (struct stripe_cache*) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe*) ; 

__attribute__((used)) static void FUNC5(struct raid_set *rs)
{
	struct stripe_cache *sc = &rs->sc;
	struct stripe *stripe;
	/* IO flush list for sorted requeued stripes. */
	struct list_head flush_list;

	FUNC0(&flush_list);

	while ((stripe = FUNC3(sc))) {
		/* Avoid endio on stripes with newly io'ed chunks. */
		if (!FUNC4(stripe))
			FUNC1(rs, stripe, &flush_list);
	}

	/*
	 * Insert any requeued stripes in the proper
	 * order at the beginning of the io (flush) list.
	 */
	FUNC2(&flush_list, sc->lists + LIST_FLUSH);
}