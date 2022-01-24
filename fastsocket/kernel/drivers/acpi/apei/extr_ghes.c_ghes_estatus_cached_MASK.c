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
typedef  scalar_t__ u32 ;
struct ghes_estatus_cache {scalar_t__ estatus_len; unsigned long long time_in; int /*<<< orphan*/  count; } ;
struct acpi_hest_generic_status {int dummy; } ;

/* Variables and functions */
 int GHES_ESTATUS_CACHES_SIZE ; 
 struct acpi_hest_generic_status* FUNC0 (struct ghes_estatus_cache*) ; 
 unsigned long long GHES_ESTATUS_IN_CACHE_MAX_NSEC ; 
 scalar_t__ FUNC1 (struct acpi_hest_generic_status*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ghes_estatus_caches ; 
 scalar_t__ FUNC3 (struct acpi_hest_generic_status*,struct acpi_hest_generic_status*,scalar_t__) ; 
 struct ghes_estatus_cache* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned long long FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct acpi_hest_generic_status *estatus)
{
	u32 len;
	int i, cached = 0;
	unsigned long long now;
	struct ghes_estatus_cache *cache;
	struct acpi_hest_generic_status *cache_estatus;

	len = FUNC1(estatus);
	FUNC5();
	for (i = 0; i < GHES_ESTATUS_CACHES_SIZE; i++) {
		cache = FUNC4(ghes_estatus_caches[i]);
		if (cache == NULL)
			continue;
		if (len != cache->estatus_len)
			continue;
		cache_estatus = FUNC0(cache);
		if (FUNC3(estatus, cache_estatus, len))
			continue;
		FUNC2(&cache->count);
		now = FUNC7();
		if (now - cache->time_in < GHES_ESTATUS_IN_CACHE_MAX_NSEC)
			cached = 1;
		break;
	}
	FUNC6();
	return cached;
}