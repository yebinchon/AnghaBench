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
struct stripe_cache {int /*<<< orphan*/  stripes; int /*<<< orphan*/  active_stripes_max; int /*<<< orphan*/  mem_cache_client; } ;
struct stripe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct stripe_cache*) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC7 (struct stripe*) ; 
 struct stripe* FUNC8 (struct stripe_cache*) ; 
 int /*<<< orphan*/  FUNC9 (struct stripe*) ; 

__attribute__((used)) static int FUNC10(struct stripe_cache *sc, unsigned stripes)
{
	int r = 0;

	/* Try to get unused stripe from LRU list. */
	while (stripes--) {
		struct stripe *stripe;

		stripe = FUNC8(sc);
		if (stripe) {
			/* An LRU stripe may never have ios pending! */
			FUNC0(FUNC7(stripe));
			FUNC0(FUNC9(stripe));
			FUNC1(&sc->stripes);
			/* Remove from hash if on before deletion. */
			FUNC6(stripe);
			FUNC5(stripe, sc->mem_cache_client);
		} else {
			r = -ENOENT;
			break;
		}
	}

	/* Check if stats are still sane. */
	if (FUNC2(&sc->active_stripes_max) >
	    FUNC2(&sc->stripes))
		FUNC3(&sc->active_stripes_max, 0);

	if (r)
		return r;

	return FUNC2(&sc->stripes) ? FUNC4(sc) : 0;
}