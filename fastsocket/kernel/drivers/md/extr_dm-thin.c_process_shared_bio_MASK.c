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
struct thin_c {int /*<<< orphan*/  td; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  shared_read_ds; } ;
struct dm_thin_lookup_result {int /*<<< orphan*/  block; } ;
struct dm_thin_endio_hook {int /*<<< orphan*/  shared_read_entry; } ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {scalar_t__ bi_size; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
struct TYPE_2__ {struct dm_thin_endio_hook* ptr; } ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct pool*,struct dm_cell_key*,struct bio*,struct dm_bio_prison_cell**) ; 
 int /*<<< orphan*/  FUNC2 (struct thin_c*,struct bio*,int /*<<< orphan*/ ,struct dm_cell_key*,struct dm_thin_lookup_result*,struct dm_bio_prison_cell*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_cell_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct thin_c*,struct dm_bio_prison_cell*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct pool*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct thin_c*,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct thin_c *tc, struct bio *bio,
			       dm_block_t block,
			       struct dm_thin_lookup_result *lookup_result)
{
	struct dm_bio_prison_cell *cell;
	struct pool *pool = tc->pool;
	struct dm_cell_key key;

	/*
	 * If cell is already occupied, then sharing is already in the process
	 * of being broken so we have nothing further to do here.
	 */
	FUNC3(tc->td, lookup_result->block, &key);
	if (FUNC1(pool, &key, bio, &cell))
		return;

	if (FUNC0(bio) == WRITE && bio->bi_size)
		FUNC2(tc, bio, block, &key, lookup_result, cell);
	else {
		struct dm_thin_endio_hook *h = FUNC6(bio)->ptr;

		h->shared_read_entry = FUNC5(pool->shared_read_ds);
		FUNC7(pool, bio);
		FUNC4(tc, cell);

		FUNC8(tc, bio, lookup_result->block);
	}
}