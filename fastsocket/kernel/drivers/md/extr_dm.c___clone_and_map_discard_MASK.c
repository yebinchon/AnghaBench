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
struct dm_target {int /*<<< orphan*/  num_discard_requests; int /*<<< orphan*/  split_discard_requests; } ;
struct clone_info {int /*<<< orphan*/  sector; int /*<<< orphan*/  sector_count; int /*<<< orphan*/  map; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct clone_info*,struct dm_target*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct dm_target* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dm_target*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dm_target*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clone_info *ci)
{
	struct dm_target *ti;
	sector_t len;

	do {
		ti = FUNC1(ci->map, ci->sector);
		if (!FUNC2(ti))
			return -EIO;

		/*
		 * Even though the device advertised discard support,
		 * that does not mean every target supports it, and
		 * reconfiguration might also have changed that since the
		 * check was performed.
		 */
		if (!ti->num_discard_requests)
			return -EOPNOTSUPP;

		if (!ti->split_discard_requests)
			len = FUNC5(ci->sector_count, FUNC4(ci->sector, ti));
		else
			len = FUNC5(ci->sector_count, FUNC3(ci->sector, ti));

		FUNC0(ci, ti, ti->num_discard_requests, len);

		ci->sector += len;
	} while (ci->sector_count -= len);

	return 0;
}