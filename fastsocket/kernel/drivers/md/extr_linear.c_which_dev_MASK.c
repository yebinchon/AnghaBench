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
struct mddev {int raid_disks; int /*<<< orphan*/  private; } ;
struct linear_conf {struct dev_info* disks; } ;
struct dev_info {scalar_t__ end_sector; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 struct linear_conf* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct dev_info *FUNC1(struct mddev *mddev, sector_t sector)
{
	int lo, mid, hi;
	struct linear_conf *conf;

	lo = 0;
	hi = mddev->raid_disks - 1;
	conf = FUNC0(mddev->private);

	/*
	 * Binary Search
	 */

	while (hi > lo) {

		mid = (hi + lo) / 2;
		if (sector < conf->disks[mid].end_sector)
			hi = mid;
		else
			lo = mid + 1;
	}

	return conf->disks + lo;
}