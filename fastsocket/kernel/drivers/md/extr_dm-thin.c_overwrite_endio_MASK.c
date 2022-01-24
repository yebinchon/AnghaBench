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
struct pool {int /*<<< orphan*/  lock; } ;
struct dm_thin_new_mapping {int err; int prepared; TYPE_1__* tc; } ;
struct dm_thin_endio_hook {struct dm_thin_new_mapping* overwrite_mapping; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {struct dm_thin_endio_hook* ptr; } ;
struct TYPE_3__ {struct pool* pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_thin_new_mapping*) ; 
 TYPE_2__* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct bio *bio, int err)
{
	unsigned long flags;
	struct dm_thin_endio_hook *h = FUNC1(bio)->ptr;
	struct dm_thin_new_mapping *m = h->overwrite_mapping;
	struct pool *pool = m->tc->pool;

	m->err = err;

	FUNC2(&pool->lock, flags);
	m->prepared = true;
	FUNC0(m);
	FUNC3(&pool->lock, flags);
}