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
union map_info {struct dm_mpath_io* ptr; } ;
struct multipath {int /*<<< orphan*/  mpio_pool; } ;
struct dm_mpath_io {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_mpath_io*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct multipath *m, union map_info *info)
{
	struct dm_mpath_io *mpio = info->ptr;

	info->ptr = NULL;
	FUNC0(mpio, m->mpio_pool);
}