#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct map_info {int /*<<< orphan*/  map_priv_2; } ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/ * x; TYPE_1__ member_0; } ;
typedef  TYPE_2__ map_word ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static map_word FUNC3(struct map_info *map, unsigned long ofs)
{
	caddr_t win_base = (caddr_t)map->map_priv_2;
	map_word d = {0};

	if(FUNC1(map))
		return d;

	d.x[0] = FUNC2(win_base + ofs);
	FUNC0(3, "ofs = 0x%08lx (%p) data = 0x%04x", ofs, win_base + ofs, d.x[0]);
	return d;
}