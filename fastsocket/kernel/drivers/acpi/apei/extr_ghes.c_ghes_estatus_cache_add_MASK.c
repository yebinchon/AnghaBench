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
struct ghes_estatus_cache {unsigned long long time_in; int /*<<< orphan*/  rcu; int /*<<< orphan*/  count; } ;
struct acpi_hest_generic_status {int dummy; } ;
struct acpi_hest_generic {int dummy; } ;

/* Variables and functions */
 int GHES_ESTATUS_CACHES_SIZE ; 
 unsigned long long GHES_ESTATUS_IN_CACHE_MAX_NSEC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ghes_estatus_cache* FUNC2 (int /*<<< orphan*/ *,struct ghes_estatus_cache*,struct ghes_estatus_cache*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,int) ; 
 struct ghes_estatus_cache* FUNC4 (struct acpi_hest_generic*,struct acpi_hest_generic_status*) ; 
 int /*<<< orphan*/  FUNC5 (struct ghes_estatus_cache*) ; 
 int /*<<< orphan*/  ghes_estatus_cache_rcu_free ; 
 int /*<<< orphan*/ * ghes_estatus_caches ; 
 struct ghes_estatus_cache* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned long long FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(
	struct acpi_hest_generic *generic,
	struct acpi_hest_generic_status *estatus)
{
	int i, slot = -1, count;
	unsigned long long now, duration, period, max_period = 0;
	struct ghes_estatus_cache *cache, *slot_cache = NULL, *new_cache;

	new_cache = FUNC4(generic, estatus);
	if (new_cache == NULL)
		return;
	FUNC7();
	now = FUNC9();
	for (i = 0; i < GHES_ESTATUS_CACHES_SIZE; i++) {
		cache = FUNC6(ghes_estatus_caches[i]);
		if (cache == NULL) {
			slot = i;
			slot_cache = NULL;
			break;
		}
		duration = now - cache->time_in;
		if (duration >= GHES_ESTATUS_IN_CACHE_MAX_NSEC) {
			slot = i;
			slot_cache = cache;
			break;
		}
		count = FUNC0(&cache->count);
		period = duration;
		FUNC3(period, (count + 1));
		if (period > max_period) {
			max_period = period;
			slot = i;
			slot_cache = cache;
		}
	}
	/* new_cache must be put into array after its contents are written */
	FUNC10();
	if (slot != -1 && FUNC2(ghes_estatus_caches + slot,
				  slot_cache, new_cache) == slot_cache) {
		if (slot_cache)
			FUNC1(&slot_cache->rcu, ghes_estatus_cache_rcu_free);
	} else
		FUNC5(new_cache);
	FUNC8();
}