#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dm_snapshot {int /*<<< orphan*/  complete; int /*<<< orphan*/  pending; TYPE_3__* store; TYPE_2__* origin; TYPE_1__* cow; } ;
typedef  int sector_t ;
struct TYPE_6__ {int chunk_shift; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CHUNK_CONSECUTIVE_BITS ; 
 int ENOMEM ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exception_cache ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct dm_snapshot *s)
{
	sector_t hash_size, cow_dev_size, origin_dev_size, max_buckets;

	/*
	 * Calculate based on the size of the original volume or
	 * the COW volume...
	 */
	cow_dev_size = FUNC3(s->cow->bdev);
	origin_dev_size = FUNC3(s->origin->bdev);
	max_buckets = FUNC0();

	hash_size = FUNC4(origin_dev_size, cow_dev_size) >> s->store->chunk_shift;
	hash_size = FUNC4(hash_size, max_buckets);

	if (hash_size < 64)
		hash_size = 64;
	hash_size = FUNC5(hash_size);
	if (FUNC2(&s->complete, hash_size,
				    DM_CHUNK_CONSECUTIVE_BITS))
		return -ENOMEM;

	/*
	 * Allocate hash table for in-flight exceptions
	 * Make this smaller than the real hash table
	 */
	hash_size >>= 3;
	if (hash_size < 64)
		hash_size = 64;

	if (FUNC2(&s->pending, hash_size, 0)) {
		FUNC1(&s->complete, exception_cache);
		return -ENOMEM;
	}

	return 0;
}