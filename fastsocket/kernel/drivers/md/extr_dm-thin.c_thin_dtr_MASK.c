#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thin_c {scalar_t__ origin_dev; scalar_t__ pool_dev; int /*<<< orphan*/  td; TYPE_2__* pool; int /*<<< orphan*/  list; int /*<<< orphan*/  can_destroy; } ;
struct dm_target {struct thin_c* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_target*,scalar_t__) ; 
 TYPE_1__ dm_thin_pool_table ; 
 int /*<<< orphan*/  FUNC3 (struct thin_c*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct thin_c*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct dm_target *ti)
{
	struct thin_c *tc = ti->private;
	unsigned long flags;

	FUNC10(tc);
	FUNC11(&tc->can_destroy);

	FUNC7(&tc->pool->lock, flags);
	FUNC4(&tc->list);
	FUNC8(&tc->pool->lock, flags);
	FUNC9();

	FUNC5(&dm_thin_pool_table.mutex);

	FUNC0(tc->pool);
	FUNC1(tc->td);
	FUNC2(ti, tc->pool_dev);
	if (tc->origin_dev)
		FUNC2(ti, tc->origin_dev);
	FUNC3(tc);

	FUNC6(&dm_thin_pool_table.mutex);
}