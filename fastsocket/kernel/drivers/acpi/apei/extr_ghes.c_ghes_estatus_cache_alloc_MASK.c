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
typedef  int /*<<< orphan*/  u32 ;
struct ghes_estatus_cache {int /*<<< orphan*/  time_in; struct acpi_hest_generic* generic; int /*<<< orphan*/  count; int /*<<< orphan*/  estatus_len; } ;
struct acpi_hest_generic_status {int dummy; } ;
struct acpi_hest_generic {int dummy; } ;

/* Variables and functions */
 int GHES_ESTATUS_CACHE_ALLOCED_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct acpi_hest_generic_status* FUNC1 (struct ghes_estatus_cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_hest_generic_status*) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ghes_estatus_cache_alloced ; 
 int /*<<< orphan*/  ghes_estatus_pool ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_hest_generic_status*,struct acpi_hest_generic_status*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static struct ghes_estatus_cache *FUNC9(
	struct acpi_hest_generic *generic,
	struct acpi_hest_generic_status *estatus)
{
	int alloced;
	u32 len, cache_len;
	struct ghes_estatus_cache *cache;
	struct acpi_hest_generic_status *cache_estatus;

	alloced = FUNC3(1, &ghes_estatus_cache_alloced);
	if (alloced > GHES_ESTATUS_CACHE_ALLOCED_MAX) {
		FUNC4(&ghes_estatus_cache_alloced);
		return NULL;
	}
	len = FUNC2(estatus);
	cache_len = FUNC0(len);
	cache = (void *)FUNC6(ghes_estatus_pool, cache_len);
	if (!cache) {
		FUNC4(&ghes_estatus_cache_alloced);
		return NULL;
	}
	cache_estatus = FUNC1(cache);
	FUNC7(cache_estatus, estatus, len);
	cache->estatus_len = len;
	FUNC5(&cache->count, 0);
	cache->generic = generic;
	cache->time_in = FUNC8();
	return cache;
}