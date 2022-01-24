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
struct TYPE_2__ {int /*<<< orphan*/  cache; } ;
struct stripe_cache {TYPE_1__ kc; } ;
struct stripe {int /*<<< orphan*/  obj; } ;
struct dm_mem_cache_client {int dummy; } ;
typedef  enum grow { ____Placeholder_grow } grow ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SC_GROW ; 
 int /*<<< orphan*/  FUNC1 (struct dm_mem_cache_client*) ; 
 int FUNC2 (struct dm_mem_cache_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_mem_cache_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stripe*) ; 
 struct stripe* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_cache*,struct stripe*) ; 

__attribute__((used)) static struct stripe *FUNC7(struct stripe_cache *sc,
				   struct dm_mem_cache_client *mc,
				   enum grow grow)
{
	int r;
	struct stripe *stripe;

	stripe = FUNC5(sc->kc.cache, GFP_KERNEL);
	if (stripe) {
		/* Grow the dm-mem-cache by one object. */
		if (grow == SC_GROW) {
			r = FUNC2(mc, 1);
			if (r)
				goto err_free;
		}

		stripe->obj = FUNC1(mc);
		if (FUNC0(stripe->obj))
			goto err_shrink;

		FUNC6(sc, stripe);
	}

	return stripe;

err_shrink:
	if (grow == SC_GROW)
		FUNC3(mc, 1);
err_free:
	FUNC4(sc->kc.cache, stripe);
	return NULL;
}