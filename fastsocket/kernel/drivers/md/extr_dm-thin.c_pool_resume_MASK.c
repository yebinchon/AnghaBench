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
struct pool_c {struct pool* pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct pool {int low_water_triggered; TYPE_1__ waker; int /*<<< orphan*/  lock; } ;
struct dm_target {struct pool_c* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pool*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct dm_target *ti)
{
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;
	unsigned long flags;

	FUNC2(&pool->lock, flags);
	pool->low_water_triggered = false;
	FUNC3(&pool->lock, flags);
	FUNC1(pool);

	FUNC0(&pool->waker.work);
}