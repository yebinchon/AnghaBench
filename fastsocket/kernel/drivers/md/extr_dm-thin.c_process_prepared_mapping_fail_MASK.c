#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dm_thin_new_mapping {TYPE_2__* tc; int /*<<< orphan*/  list; int /*<<< orphan*/  cell; int /*<<< orphan*/  saved_bi_end_io; TYPE_1__* bio; } ;
struct TYPE_6__ {int /*<<< orphan*/  mapping_pool; } ;
struct TYPE_5__ {TYPE_3__* pool; } ;
struct TYPE_4__ {int /*<<< orphan*/  bi_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_thin_new_mapping*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dm_thin_new_mapping *m)
{
	if (m->bio)
		m->bio->bi_end_io = m->saved_bi_end_io;
	FUNC0(m->tc->pool, m->cell);
	FUNC1(&m->list);
	FUNC2(m, m->tc->pool->mapping_pool);
}