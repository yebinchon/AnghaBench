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
struct thin_c {int /*<<< orphan*/  td; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  mapping_pool; } ;
struct dm_thin_new_mapping {int /*<<< orphan*/  list; int /*<<< orphan*/  cell; int /*<<< orphan*/  data_block; int /*<<< orphan*/  virt_block; scalar_t__ err; int /*<<< orphan*/  saved_bi_end_io; struct bio* bio; struct thin_c* tc; } ;
struct bio {int /*<<< orphan*/  bi_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thin_c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thin_c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_thin_new_mapping*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pool*,char*,int) ; 

__attribute__((used)) static void FUNC8(struct dm_thin_new_mapping *m)
{
	struct thin_c *tc = m->tc;
	struct pool *pool = tc->pool;
	struct bio *bio;
	int r;

	bio = m->bio;
	if (bio)
		bio->bi_end_io = m->saved_bi_end_io;

	if (m->err) {
		FUNC3(pool, m->cell);
		goto out;
	}

	/*
	 * Commit the prepared block into the mapping btree.
	 * Any I/O for this block arriving after this point will get
	 * remapped to it directly.
	 */
	r = FUNC4(tc->td, m->virt_block, m->data_block);
	if (r) {
		FUNC7(pool, "dm_thin_insert_block", r);
		FUNC3(pool, m->cell);
		goto out;
	}

	/*
	 * Release any bios held while the block was being provisioned.
	 * If we are processing a write bio that completely covers the block,
	 * we already processed it so can ignore it now when processing
	 * the bios in the cell.
	 */
	if (bio) {
		FUNC2(tc, m->cell);
		FUNC0(bio, 0);
	} else
		FUNC1(tc, m->cell);

out:
	FUNC5(&m->list);
	FUNC6(m, pool->mapping_pool);
}