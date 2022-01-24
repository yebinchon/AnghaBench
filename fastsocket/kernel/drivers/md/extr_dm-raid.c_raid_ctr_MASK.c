#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct raid_type {int dummy; } ;
struct TYPE_5__ {scalar_t__ array_sectors; int /*<<< orphan*/  reconfig_mutex; scalar_t__ in_sync; int /*<<< orphan*/  event_work; int /*<<< orphan*/  sync_super; } ;
struct TYPE_6__ {int /*<<< orphan*/  unplug_fn; int /*<<< orphan*/  congested_fn; } ;
struct raid_set {TYPE_1__ md; TYPE_4__ callbacks; } ;
struct dm_target {char* error; int num_flush_requests; scalar_t__ len; int /*<<< orphan*/  table; struct raid_set* private; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long INT_MAX ; 
 scalar_t__ FUNC1 (struct raid_set*) ; 
 int FUNC2 (struct raid_set*) ; 
 int FUNC3 (struct dm_target*,struct raid_set*) ; 
 struct raid_set* FUNC4 (struct dm_target*,struct raid_type*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct raid_set*) ; 
 int FUNC6 (struct raid_set*,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  do_table_event ; 
 struct raid_type* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,int,unsigned long*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct raid_set*,char**,unsigned int) ; 
 int /*<<< orphan*/  raid_is_congested ; 
 int /*<<< orphan*/  raid_unplug ; 
 int /*<<< orphan*/  super_sync ; 

__attribute__((used)) static int FUNC16(struct dm_target *ti, unsigned argc, char **argv)
{
	int ret;
	struct raid_type *rt;
	unsigned long num_raid_params, num_raid_devs;
	struct raid_set *rs = NULL;

	/* Must have at least <raid_type> <#raid_params> */
	if (argc < 2) {
		ti->error = "Too few arguments";
		return -EINVAL;
	}

	/* raid type */
	rt = FUNC8(argv[0]);
	if (!rt) {
		ti->error = "Unrecognised raid_type";
		return -EINVAL;
	}
	argc--;
	argv++;

	/* number of RAID parameters */
	if (FUNC9(argv[0], 10, &num_raid_params) < 0) {
		ti->error = "Cannot understand number of RAID parameters";
		return -EINVAL;
	}
	argc--;
	argv++;

	/* Skip over RAID params for now and find out # of devices */
	if (num_raid_params + 1 > argc) {
		ti->error = "Arguments do not agree with counts given";
		return -EINVAL;
	}

	if ((FUNC9(argv[num_raid_params], 10, &num_raid_devs) < 0) ||
	    (num_raid_devs >= INT_MAX)) {
		ti->error = "Cannot understand number of raid devices";
		return -EINVAL;
	}

	rs = FUNC4(ti, rt, (unsigned)num_raid_devs);
	if (FUNC1(rs))
		return FUNC2(rs);

	ret = FUNC15(rs, argv, (unsigned)num_raid_params);
	if (ret)
		goto bad;

	ret = -EINVAL;

	argc -= num_raid_params + 1; /* +1: we already have num_raid_devs */
	argv += num_raid_params + 1;

	if (argc != (num_raid_devs * 2)) {
		ti->error = "Supplied RAID devices does not match the count given";
		goto bad;
	}

	ret = FUNC6(rs, argv);
	if (ret)
		goto bad;

	rs->md.sync_super = super_sync;
	ret = FUNC3(ti, rs);
	if (ret)
		goto bad;

	FUNC0(&rs->md.event_work, do_table_event);
	ti->private = rs;
	ti->num_flush_requests = 1;

	FUNC13(&rs->md.reconfig_mutex);
	ret = FUNC10(&rs->md);
	rs->md.in_sync = 0; /* Assume already marked dirty */
	FUNC14(&rs->md.reconfig_mutex);

	if (ret) {
		ti->error = "Fail to run raid array";
		goto bad;
	}

	if (ti->len != rs->md.array_sectors) {
		ti->error = "Array size does not match requested target length";
		ret = -EINVAL;
		goto size_mismatch;
	}
	rs->callbacks.congested_fn = raid_is_congested;
	rs->callbacks.unplug_fn = raid_unplug;
	FUNC7(ti->table, &rs->callbacks);

	FUNC12(&rs->md);
	return 0;

size_mismatch:
	FUNC11(&rs->md);
bad:
	FUNC5(rs);

	return ret;
}