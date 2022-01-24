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
typedef  int /*<<< orphan*/  uint32_t ;
struct dm_target {int split_io; } ;
typedef  int sector_t ;

/* Variables and functions */
 int FUNC0 (struct dm_target*,int) ; 
 int FUNC1 (int,struct dm_target*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static sector_t FUNC4(sector_t sector, struct dm_target *ti)
{
	sector_t len = FUNC1(sector, ti);
	sector_t offset, max_len;

	/*
	 * Does the target need to split even further?
	 */
	if (ti->split_io) {
		offset = FUNC0(ti, sector);
		if (FUNC3(ti->split_io & (ti->split_io - 1)))
			max_len = FUNC2(offset, (uint32_t)ti->split_io);
		else
			max_len = offset & (ti->split_io - 1);
		max_len = ti->split_io - max_len;

		if (len > max_len)
			len = max_len;
	}

	return len;
}