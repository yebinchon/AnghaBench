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
typedef  int uint64_t ;
struct queue_limits {int io_opt; scalar_t__ discard_granularity; } ;
struct TYPE_2__ {int /*<<< orphan*/  discard_enabled; } ;
struct pool_c {TYPE_1__ adjusted_pf; struct pool* pool; } ;
struct pool {int sectors_per_block; } ;
struct dm_target {struct pool_c* private; } ;

/* Variables and functions */
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct queue_limits*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_limits*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pool_c*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pool_c*,struct queue_limits*) ; 

__attribute__((used)) static void FUNC5(struct dm_target *ti, struct queue_limits *limits)
{
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;
	uint64_t io_opt_sectors = limits->io_opt >> SECTOR_SHIFT;

	/*
	 * If the system-determined stacked limits are compatible with the
	 * pool's blocksize (io_opt is a factor) do not override them.
	 */
	if (io_opt_sectors < pool->sectors_per_block ||
	    FUNC3(io_opt_sectors, pool->sectors_per_block)) {
		FUNC0(limits, 0);
		FUNC1(limits, pool->sectors_per_block << SECTOR_SHIFT);
	}

	/*
	 * pt->adjusted_pf is a staging area for the actual features to use.
	 * They get transferred to the live pool in bind_control_target()
	 * called from pool_preresume().
	 */
	if (!pt->adjusted_pf.discard_enabled) {
		/*
		 * Must explicitly disallow stacking discard limits otherwise the
		 * block layer will stack them if pool's data device has support.
		 * QUEUE_FLAG_DISCARD wouldn't be set but there is no way for the
		 * user to see that, so make sure to set all discard limits to 0.
		 */
		limits->discard_granularity = 0;
		return;
	}

	FUNC2(pt);

	FUNC4(pt, limits);
}