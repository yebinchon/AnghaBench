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
struct TYPE_2__ {int /*<<< orphan*/ * cache; } ;
struct stripe_cache {int /*<<< orphan*/  hash; scalar_t__ dm_io_client; scalar_t__ mem_cache_client; TYPE_1__ kc; int /*<<< orphan*/  stripes; } ;
struct raid_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct raid_set* FUNC2 (struct stripe_cache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct stripe_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct raid_set*) ; 

__attribute__((used)) static void FUNC10(struct stripe_cache *sc)
{
	struct raid_set *rs = FUNC2(sc);

	if (sc->kc.cache) {
		FUNC9(rs);
		FUNC0(FUNC8(sc, FUNC3(&sc->stripes)));
		FUNC7(sc->kc.cache);
		sc->kc.cache = NULL;

		if (sc->mem_cache_client && !FUNC1(sc->mem_cache_client))
			FUNC5(sc->mem_cache_client);

		if (sc->dm_io_client && !FUNC1(sc->dm_io_client))
			FUNC4(sc->dm_io_client);

		FUNC6(&sc->hash);
	}
}