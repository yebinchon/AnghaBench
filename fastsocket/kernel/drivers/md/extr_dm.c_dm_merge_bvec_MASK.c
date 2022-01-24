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
struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int dummy; } ;
struct dm_target {TYPE_1__* type; } ;
struct dm_table {int dummy; } ;
struct bvec_merge_data {int bi_size; int /*<<< orphan*/  bi_sector; } ;
struct bio_vec {int bv_len; } ;
typedef  int sector_t ;
struct TYPE_2__ {int (* merge ) (struct dm_target*,struct bvec_merge_data*,struct bio_vec*,int) ;} ;

/* Variables and functions */
 scalar_t__ BIO_MAX_SECTORS ; 
 scalar_t__ PAGE_SIZE ; 
 int SECTOR_SHIFT ; 
 struct dm_table* FUNC0 (struct mapped_device*) ; 
 struct dm_target* FUNC1 (struct dm_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dm_target*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct request_queue*) ; 
 int FUNC7 (struct dm_target*,struct bvec_merge_data*,struct bio_vec*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct request_queue *q,
			 struct bvec_merge_data *bvm,
			 struct bio_vec *biovec)
{
	struct mapped_device *md = q->queuedata;
	struct dm_table *map = FUNC0(md);
	struct dm_target *ti;
	sector_t max_sectors;
	int max_size = 0;

	if (FUNC8(!map))
		goto out;

	ti = FUNC1(map, bvm->bi_sector);
	if (!FUNC3(ti))
		goto out_table;

	/*
	 * Find maximum amount of I/O that won't need splitting
	 */
	max_sectors = FUNC5(FUNC4(bvm->bi_sector, ti),
			  (sector_t) BIO_MAX_SECTORS);
	max_size = (max_sectors << SECTOR_SHIFT) - bvm->bi_size;
	if (max_size < 0)
		max_size = 0;

	/*
	 * merge_bvec_fn() returns number of bytes
	 * it can accept at this offset
	 * max is precomputed maximal io size
	 */
	if (max_size && ti->type->merge)
		max_size = ti->type->merge(ti, bvm, biovec, max_size);
	/*
	 * If the target doesn't support merge method and some of the devices
	 * provided their merge_bvec method (we know this by looking at
	 * queue_max_hw_sectors), then we can't allow bios with multiple vector
	 * entries.  So always set max_size to 0, and the code below allows
	 * just one page.
	 */
	else if (FUNC6(q) <= PAGE_SIZE >> 9)

		max_size = 0;

out_table:
	FUNC2(map);

out:
	/*
	 * Always allow an entire first page
	 */
	if (max_size <= biovec->bv_len && !(bvm->bi_size >> SECTOR_SHIFT))
		max_size = biovec->bv_len;

	return max_size;
}