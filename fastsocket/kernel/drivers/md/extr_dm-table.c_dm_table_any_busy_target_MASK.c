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
struct dm_target {TYPE_1__* type; } ;
struct dm_table {unsigned int num_targets; struct dm_target* targets; } ;
struct TYPE_2__ {scalar_t__ (* busy ) (struct dm_target*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_target*) ; 

int FUNC1(struct dm_table *t)
{
	unsigned i;
	struct dm_target *ti;

	for (i = 0; i < t->num_targets; i++) {
		ti = t->targets + i;
		if (ti->type->busy && ti->type->busy(ti))
			return 1;
	}

	return 0;
}