#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct pool_c {int /*<<< orphan*/  requested_pf; scalar_t__ low_water_blocks; TYPE_5__* data_dev; TYPE_3__* metadata_dev; struct pool* pool; } ;
struct TYPE_6__ {int /*<<< orphan*/  error_if_no_space; int /*<<< orphan*/  discard_passdown; int /*<<< orphan*/  discard_enabled; int /*<<< orphan*/  mode; } ;
struct pool {scalar_t__ sectors_per_block; TYPE_1__ pf; int /*<<< orphan*/  pool_md; int /*<<< orphan*/  pmd; } ;
struct dm_target {struct pool_c* private; } ;
typedef  int status_type_t ;
typedef  scalar_t__ dm_block_t ;
struct TYPE_10__ {TYPE_4__* bdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_8__ {TYPE_2__* bdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 unsigned int DM_STATUS_NOFLUSH_FLAG ; 
 int /*<<< orphan*/  PM_FAIL ; 
 int /*<<< orphan*/  PM_OUT_OF_DATA_SPACE ; 
 int /*<<< orphan*/  PM_READ_ONLY ; 
#define  STATUSTYPE_INFO 129 
#define  STATUSTYPE_TABLE 128 
 int /*<<< orphan*/  FUNC2 (struct pool*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pool*) ; 

__attribute__((used)) static int FUNC14(struct dm_target *ti, status_type_t type,
		       unsigned status_flags, char *result, unsigned maxlen)
{
	int r;
	unsigned sz = 0;
	uint64_t transaction_id;
	dm_block_t nr_free_blocks_data;
	dm_block_t nr_free_blocks_metadata;
	dm_block_t nr_blocks_data;
	dm_block_t nr_blocks_metadata;
	dm_block_t held_root;
	char buf[BDEVNAME_SIZE];
	char buf2[BDEVNAME_SIZE];
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;

	switch (type) {
	case STATUSTYPE_INFO:
		if (FUNC13(pool) == PM_FAIL) {
			FUNC0("Fail");
			break;
		}

		/* Commit to ensure statistics aren't out-of-date */
		if (!(status_flags & DM_STATUS_NOFLUSH_FLAG) && !FUNC10(ti))
			(void) FUNC2(pool);

		r = FUNC9(pool->pmd, &transaction_id);
		if (r) {
			FUNC1("%s: dm_pool_get_metadata_transaction_id returned %d",
			      FUNC3(pool->pool_md), r);
			goto err;
		}

		r = FUNC6(pool->pmd, &nr_free_blocks_metadata);
		if (r) {
			FUNC1("%s: dm_pool_get_free_metadata_block_count returned %d",
			      FUNC3(pool->pool_md), r);
			goto err;
		}

		r = FUNC7(pool->pmd, &nr_blocks_metadata);
		if (r) {
			FUNC1("%s: dm_pool_get_data_dev_size returned %d",
			      FUNC3(pool->pool_md), r);
			goto err;
		}

		r = FUNC5(pool->pmd, &nr_free_blocks_data);
		if (r) {
			FUNC1("%s: dm_pool_get_free_block_count returned %d",
			      FUNC3(pool->pool_md), r);
			goto err;
		}

		r = FUNC4(pool->pmd, &nr_blocks_data);
		if (r) {
			FUNC1("%s: dm_pool_get_data_dev_size returned %d",
			      FUNC3(pool->pool_md), r);
			goto err;
		}

		r = FUNC8(pool->pmd, &held_root);
		if (r) {
			FUNC1("%s: dm_pool_get_metadata_snap returned %d",
			      FUNC3(pool->pool_md), r);
			goto err;
		}

		FUNC0("%llu %llu/%llu %llu/%llu ",
		       (unsigned long long)transaction_id,
		       (unsigned long long)(nr_blocks_metadata - nr_free_blocks_metadata),
		       (unsigned long long)nr_blocks_metadata,
		       (unsigned long long)(nr_blocks_data - nr_free_blocks_data),
		       (unsigned long long)nr_blocks_data);

		if (held_root)
			FUNC0("%llu ", held_root);
		else
			FUNC0("- ");

		if (pool->pf.mode == PM_OUT_OF_DATA_SPACE)
			FUNC0("out_of_data_space ");
		else if (pool->pf.mode == PM_READ_ONLY)
			FUNC0("ro ");
		else
			FUNC0("rw ");

		if (!pool->pf.discard_enabled)
			FUNC0("ignore_discard ");
		else if (pool->pf.discard_passdown)
			FUNC0("discard_passdown ");
		else
			FUNC0("no_discard_passdown ");

		if (pool->pf.error_if_no_space)
			FUNC0("error_if_no_space ");
		else
			FUNC0("queue_if_no_space ");

		break;

	case STATUSTYPE_TABLE:
		FUNC0("%s %s %lu %llu ",
		       FUNC12(buf, pt->metadata_dev->bdev->bd_dev),
		       FUNC12(buf2, pt->data_dev->bdev->bd_dev),
		       (unsigned long)pool->sectors_per_block,
		       (unsigned long long)pt->low_water_blocks);
		FUNC11(&pt->requested_pf, result, sz, maxlen);
		break;
	}

	return 0;

err:
	FUNC0("Error");
	return 0;
}