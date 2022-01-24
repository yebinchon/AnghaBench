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
typedef  int /*<<< orphan*/  uint32_t ;
struct dm_region_hash {void (* dispatch_bios ) (void*,struct bio_list*) ;void (* wakeup_workers ) (void*) ;void (* wakeup_all_recovery_waiters ) (void*) ;unsigned int max_recovery; unsigned int mask; unsigned int nr_buckets; int /*<<< orphan*/ * buckets; int /*<<< orphan*/  region_pool; scalar_t__ flush_failure; int /*<<< orphan*/  failed_recovered_regions; int /*<<< orphan*/  recovered_regions; int /*<<< orphan*/  quiesced_regions; int /*<<< orphan*/  clean_regions; int /*<<< orphan*/  recovery_in_flight; int /*<<< orphan*/  recovery_count; int /*<<< orphan*/  region_lock; int /*<<< orphan*/  prime; int /*<<< orphan*/  shift; int /*<<< orphan*/  hash_lock; scalar_t__ region_shift; int /*<<< orphan*/  region_size; struct dm_dirty_log* log; int /*<<< orphan*/  target_begin; void* context; } ;
struct dm_region {int dummy; } ;
struct dm_dirty_log {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int region_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dm_region_hash* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MIN_REGIONS ; 
 int /*<<< orphan*/  RH_HASH_MULT ; 
 int /*<<< orphan*/  RH_HASH_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_region_hash*) ; 
 struct dm_region_hash* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (unsigned int) ; 

struct dm_region_hash *FUNC13(
		void *context, void (*dispatch_bios)(void *context,
						     struct bio_list *bios),
		void (*wakeup_workers)(void *context),
		void (*wakeup_all_recovery_waiters)(void *context),
		sector_t target_begin, unsigned max_recovery,
		struct dm_dirty_log *log, uint32_t region_size,
		region_t nr_regions)
{
	struct dm_region_hash *rh;
	unsigned nr_buckets, max_buckets;
	size_t i;

	/*
	 * Calculate a suitable number of buckets for our hash
	 * table.
	 */
	max_buckets = nr_regions >> 6;
	for (nr_buckets = 128u; nr_buckets < max_buckets; nr_buckets <<= 1)
		;
	nr_buckets >>= 1;

	rh = FUNC6(sizeof(*rh), GFP_KERNEL);
	if (!rh) {
		FUNC0("unable to allocate region hash memory");
		return FUNC1(-ENOMEM);
	}

	rh->context = context;
	rh->dispatch_bios = dispatch_bios;
	rh->wakeup_workers = wakeup_workers;
	rh->wakeup_all_recovery_waiters = wakeup_all_recovery_waiters;
	rh->target_begin = target_begin;
	rh->max_recovery = max_recovery;
	rh->log = log;
	rh->region_size = region_size;
	rh->region_shift = FUNC4(region_size) - 1;
	FUNC8(&rh->hash_lock);
	rh->mask = nr_buckets - 1;
	rh->nr_buckets = nr_buckets;

	rh->shift = RH_HASH_SHIFT;
	rh->prime = RH_HASH_MULT;

	rh->buckets = FUNC12(nr_buckets * sizeof(*rh->buckets));
	if (!rh->buckets) {
		FUNC0("unable to allocate region hash bucket memory");
		FUNC5(rh);
		return FUNC1(-ENOMEM);
	}

	for (i = 0; i < nr_buckets; i++)
		FUNC2(rh->buckets + i);

	FUNC10(&rh->region_lock);
	FUNC9(&rh->recovery_count, 0);
	FUNC3(&rh->recovery_in_flight, 0);
	FUNC2(&rh->clean_regions);
	FUNC2(&rh->quiesced_regions);
	FUNC2(&rh->recovered_regions);
	FUNC2(&rh->failed_recovered_regions);
	rh->flush_failure = 0;

	rh->region_pool = FUNC7(MIN_REGIONS,
						      sizeof(struct dm_region));
	if (!rh->region_pool) {
		FUNC11(rh->buckets);
		FUNC5(rh);
		rh = FUNC1(-ENOMEM);
	}

	return rh;
}