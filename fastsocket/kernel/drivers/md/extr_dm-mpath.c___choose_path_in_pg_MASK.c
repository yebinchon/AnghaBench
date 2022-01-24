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
struct TYPE_4__ {TYPE_1__* type; } ;
struct priority_group {TYPE_2__ ps; } ;
struct multipath {int /*<<< orphan*/  current_pgpath; struct priority_group* current_pg; int /*<<< orphan*/  repeat_count; } ;
struct dm_path {int dummy; } ;
struct TYPE_3__ {struct dm_path* (* select_path ) (TYPE_2__*,int /*<<< orphan*/ *,size_t) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct multipath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_path*) ; 
 struct dm_path* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC3(struct multipath *m, struct priority_group *pg,
			       size_t nr_bytes)
{
	struct dm_path *path;

	path = pg->ps.type->select_path(&pg->ps, &m->repeat_count, nr_bytes);
	if (!path)
		return -ENXIO;

	m->current_pgpath = FUNC1(path);

	if (m->current_pg != pg)
		FUNC0(m, m->current_pgpath);

	return 0;
}