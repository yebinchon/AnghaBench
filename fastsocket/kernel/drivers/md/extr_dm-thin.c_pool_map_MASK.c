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
typedef  union map_info {int dummy; } map_info ;
struct pool_c {TYPE_1__* data_dev; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  lock; } ;
struct dm_target {struct pool_c* private; } ;
struct bio {int /*<<< orphan*/  bi_bdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct dm_target *ti, struct bio *bio,
		    union map_info *map_context)
{
	int r;
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;
	unsigned long flags;

	/*
	 * As this is a singleton target, ti->begin is always zero.
	 */
	FUNC0(&pool->lock, flags);
	bio->bi_bdev = pt->data_dev->bdev;
	r = DM_MAPIO_REMAPPED;
	FUNC1(&pool->lock, flags);

	return r;
}