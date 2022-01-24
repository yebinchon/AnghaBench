#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct map_info {scalar_t__ map_priv_2; } ;
struct TYPE_3__ {int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ map_word ;

/* Variables and functions */
 unsigned long WINDOW_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct map_info*,unsigned long) ; 
 int /*<<< orphan*/  vmax301_spin ; 

__attribute__((used)) static map_word FUNC4(struct map_info *map, unsigned long ofs)
{
	map_word ret;
	FUNC1(&vmax301_spin);
	FUNC3(map, ofs);
	ret.x[0] = FUNC0(map->map_priv_2 + (ofs & WINDOW_MASK));
	FUNC2(&vmax301_spin);
	return ret;
}