#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct thin_c {struct dm_dev* origin_dev; struct dm_dev* pool_dev; TYPE_3__* pool; int /*<<< orphan*/  td; int /*<<< orphan*/  list; int /*<<< orphan*/  can_destroy; int /*<<< orphan*/  refcount; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  sort_bio_list; int /*<<< orphan*/  retry_on_resume_list; int /*<<< orphan*/  deferred_bio_list; int /*<<< orphan*/  lock; } ;
struct mapped_device {int dummy; } ;
struct dm_target {char* error; int num_flush_requests; int flush_supported; int discard_zeroes_data_unsupported; int discards_supported; int num_discard_requests; int split_discard_requests; int /*<<< orphan*/  table; struct thin_c* private; } ;
struct dm_dev {TYPE_1__* bdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_9__ {scalar_t__ discard_enabled; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active_thins; TYPE_2__ pf; int /*<<< orphan*/  sectors_per_block; int /*<<< orphan*/  pmd; } ;
struct TYPE_8__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PM_FAIL ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dm_target*,char*,int /*<<< orphan*/ ,struct dm_dev**) ; 
 struct mapped_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_target*,struct dm_dev*) ; 
 int FUNC11 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_4__ dm_thin_pool_table ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct thin_c*) ; 
 struct thin_c* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (char*,unsigned long long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 () ; 

__attribute__((used)) static int FUNC25(struct dm_target *ti, unsigned argc, char **argv)
{
	int r;
	struct thin_c *tc;
	struct dm_dev *pool_dev, *origin_dev;
	struct mapped_device *pool_md;
	unsigned long flags;

	FUNC18(&dm_thin_pool_table.mutex);

	if (argc != 2 && argc != 3) {
		ti->error = "Invalid argument count";
		r = -EINVAL;
		goto out_unlock;
	}

	tc = ti->private = FUNC16(sizeof(*tc), GFP_KERNEL);
	if (!tc) {
		ti->error = "Out of memory";
		r = -ENOMEM;
		goto out_unlock;
	}
	FUNC21(&tc->lock);
	FUNC4(&tc->deferred_bio_list);
	FUNC4(&tc->retry_on_resume_list);
	tc->sort_bio_list = RB_ROOT;

	if (argc == 3) {
		r = FUNC5(ti, argv[2], FMODE_READ, &origin_dev);
		if (r) {
			ti->error = "Error opening origin device";
			goto bad_origin_dev;
		}
		tc->origin_dev = origin_dev;
	}

	r = FUNC5(ti, argv[0], FUNC12(ti->table), &pool_dev);
	if (r) {
		ti->error = "Error opening pool device";
		goto bad_pool_dev;
	}
	tc->pool_dev = pool_dev;

	if (FUNC20(argv[1], (unsigned long long *)&tc->dev_id, 0)) {
		ti->error = "Invalid device id";
		r = -EINVAL;
		goto bad_common;
	}

	pool_md = FUNC6(tc->pool_dev->bdev->bd_dev);
	if (!pool_md) {
		ti->error = "Couldn't get pool mapped device";
		r = -EINVAL;
		goto bad_common;
	}

	tc->pool = FUNC2(pool_md);
	if (!tc->pool) {
		ti->error = "Couldn't find pool object";
		r = -EINVAL;
		goto bad_pool_lookup;
	}
	FUNC1(tc->pool);

	if (FUNC13(tc->pool) == PM_FAIL) {
		ti->error = "Couldn't open thin device, Pool is in fail mode";
		r = -EINVAL;
		goto bad_thin_open;
	}

	r = FUNC8(tc->pool->pmd, tc->dev_id, &tc->td);
	if (r) {
		ti->error = "Couldn't open thin internal device";
		goto bad_thin_open;
	}

	r = FUNC11(ti, tc->pool->sectors_per_block);
	if (r)
		goto bad_target_max_io_len;

	ti->num_flush_requests = 1;
	ti->flush_supported = 1;

	/* In case the pool supports discards, pass them on. */
	ti->discard_zeroes_data_unsupported = 1;
	if (tc->pool->pf.discard_enabled) {
		ti->discards_supported = 1;
		ti->num_discard_requests = 1;
		/* Discard requests must be split on a block boundary */
		ti->split_discard_requests = 1;
	}

	FUNC9(pool_md);

	FUNC19(&dm_thin_pool_table.mutex);

	FUNC3(&tc->refcount, 1);
	FUNC14(&tc->can_destroy);

	FUNC22(&tc->pool->lock, flags);
	FUNC17(&tc->list, &tc->pool->active_thins);
	FUNC23(&tc->pool->lock, flags);
	/*
	 * This synchronize_rcu() call is needed here otherwise we risk a
	 * wake_worker() call finding no bios to process (because the newly
	 * added tc isn't yet visible).  So this reduces latency since we
	 * aren't then dependent on the periodic commit to wake_worker().
	 */
	FUNC24();

	return 0;

bad_target_max_io_len:
	FUNC7(tc->td);
bad_thin_open:
	FUNC0(tc->pool);
bad_pool_lookup:
	FUNC9(pool_md);
bad_common:
	FUNC10(ti, tc->pool_dev);
bad_pool_dev:
	if (tc->origin_dev)
		FUNC10(ti, tc->origin_dev);
bad_origin_dev:
	FUNC15(tc);
out_unlock:
	FUNC19(&dm_thin_pool_table.mutex);

	return r;
}