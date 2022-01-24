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
struct stripe_cache {int /*<<< orphan*/  hash; } ;
struct TYPE_4__ {int /*<<< orphan*/  parity; } ;
struct stripe {TYPE_2__ idx; int /*<<< orphan*/  region; int /*<<< orphan*/  key; } ;
struct TYPE_3__ {int /*<<< orphan*/  rh; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ recover; struct stripe_cache sc; } ;
struct raid_address {int /*<<< orphan*/  pi; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_HITS_1ST ; 
 scalar_t__ S_INSCACHE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct stripe*) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC7 (struct stripe*) ; 
 struct stripe* FUNC8 (struct stripe_cache*,int /*<<< orphan*/ ) ; 
 struct stripe* FUNC9 (struct stripe_cache*) ; 
 int /*<<< orphan*/  FUNC10 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC11 (struct stripe*) ; 

__attribute__((used)) static struct stripe *FUNC12(struct raid_set *rs,
				  struct raid_address *addr)
{
	int r;
	struct stripe_cache *sc = &rs->sc;
	struct stripe *stripe;

	/* Try stripe from hash. */
	stripe = FUNC8(sc, addr->key);
	if (stripe) {
		r = FUNC3(stripe);
		if (r)
			goto get_lock_failed;

		FUNC1(rs->stats + S_HITS_1ST); /* REMOVEME: statistics. */
	} else {
		/* Not in hash -> try to get an LRU stripe. */
		stripe = FUNC9(sc);
		if (stripe) {
			/*
			 * An LRU stripe may not be referenced
			 * and may never have ios pending!
			 */
			FUNC0(FUNC11(stripe));
			FUNC0(FUNC7(stripe));

			/* Remove from hash if on before reuse. */
			FUNC4(stripe);

			/* Invalidate before reinserting with changed key. */
			FUNC6(stripe);

			stripe->key = addr->key;
			stripe->region = FUNC2(rs->recover.rh,
								addr->key);
			stripe->idx.parity = addr->pi;
			r = FUNC3(stripe);
			if (r)
				goto get_lock_failed;

			/* Insert stripe into the stripe hash. */
			FUNC5(&sc->hash, stripe);
			/* REMOVEME: statistics. */
			FUNC1(rs->stats + S_INSCACHE);
		}
	}

	return stripe;

get_lock_failed:
	FUNC10(stripe);
	return NULL;
}