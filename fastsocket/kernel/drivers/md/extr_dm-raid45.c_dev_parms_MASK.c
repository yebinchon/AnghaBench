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
struct TYPE_2__ {unsigned long long sectors_per_dev; int raid_devs; } ;
struct raid_set {TYPE_1__ set; struct raid_dev* dev; struct dm_target* ti; } ;
struct raid_dev {unsigned long long start; int /*<<< orphan*/  dev; } ;
struct dm_target {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct raid_set*,struct raid_dev*) ; 
 int FUNC6 (char*,char*,unsigned long long*) ; 

__attribute__((used)) static int FUNC7(struct raid_set *rs, char **argv, int *p)
{
	struct dm_target *ti = rs->ti;

FUNC0("rs->set.sectors_per_dev=%llu", (unsigned long long) rs->set.sectors_per_dev);
	for (*p = 0; *p < rs->set.raid_devs; (*p)++, argv += 2) {
		int r;
		unsigned long long tmp;
		struct raid_dev *dev = rs->dev + *p;

		/* Get offset and device. */
		if (FUNC6(argv[1], "%llu", &tmp) != 1 ||
		    tmp > rs->set.sectors_per_dev)
			FUNC1("Invalid RAID device offset parameter");

		dev->start = tmp;
		r = FUNC3(ti, argv[0],
				  FUNC4(ti->table), &dev->dev);
		if (r)
			FUNC2("RAID device lookup failure", r);

		r = FUNC5(rs, dev);
		if (r != -ENODEV && r < *p) {
			(*p)++;	/* Ensure dm_put_device() on actual device. */
			FUNC2("Duplicate RAID device", -ENXIO);
		}
	}

	return 0;
}