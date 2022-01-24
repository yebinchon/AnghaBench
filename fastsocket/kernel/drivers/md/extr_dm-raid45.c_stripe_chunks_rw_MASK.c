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
struct stripe_cache {int /*<<< orphan*/  active_stripes_max; } ;
struct stripe {int /*<<< orphan*/  sc; } ;
struct raid_set {scalar_t__ stats; struct stripe_cache sc; } ;

/* Variables and functions */
 struct raid_set* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_FLUSHS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct stripe*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct stripe_cache*) ; 
 int /*<<< orphan*/  stripe_chunk_rw ; 
 int /*<<< orphan*/  stripe_get_references ; 

__attribute__((used)) static int FUNC6(struct stripe *stripe)
{
	int r;
	struct raid_set *rs = FUNC0(stripe->sc);

	/*
	 * Increment the pending count on the stripe
	 * first, so that we don't race in endio().
	 *
	 * An inc (IO) is needed for any chunk unless !ChunkIo(chunk):
	 *
	 * o not uptodate
	 * o dirtied by writes merged
	 * o dirtied by parity calculations
	 */
	r = FUNC4(stripe, stripe_get_references);
	if (r) {
		/* Io needed: chunks are either not uptodate or dirty. */
		int max;	/* REMOVEME: */
		struct stripe_cache *sc = &rs->sc;

		/* Submit actual io. */
		FUNC4(stripe, stripe_chunk_rw);

		/* REMOVEME: statistics */
		max = FUNC5(sc);
		if (FUNC2(&sc->active_stripes_max) < max)
			FUNC3(&sc->active_stripes_max, max);

		FUNC1(rs->stats + S_FLUSHS);
		/* END REMOVEME: statistics */
	}

	return r;
}