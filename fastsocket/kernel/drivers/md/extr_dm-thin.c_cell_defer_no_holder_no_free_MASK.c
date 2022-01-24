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
struct thin_c {int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_bio_list; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  prison; } ;
struct dm_bio_prison_cell {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dm_bio_prison_cell*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*) ; 

__attribute__((used)) static void FUNC4(struct thin_c *tc,
					 struct dm_bio_prison_cell *cell)
{
	struct pool *pool = tc->pool;
	unsigned long flags;

	FUNC1(&tc->lock, flags);
	FUNC0(pool->prison, cell, &tc->deferred_bio_list);
	FUNC2(&tc->lock, flags);

	FUNC3(pool);
}