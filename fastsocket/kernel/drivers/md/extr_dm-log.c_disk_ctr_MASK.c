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
struct dm_target {int /*<<< orphan*/  table; } ;
struct dm_dirty_log {int dummy; } ;
struct dm_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (struct dm_dirty_log*,struct dm_target*,unsigned int,char**,struct dm_dev*) ; 
 int FUNC2 (struct dm_target*,char*,int /*<<< orphan*/ ,struct dm_dev**) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_target*,struct dm_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dm_dirty_log *log, struct dm_target *ti,
		    unsigned int argc, char **argv)
{
	int r;
	struct dm_dev *dev;

	if (argc < 2 || argc > 3) {
		FUNC0("wrong number of arguments to disk dirty region log");
		return -EINVAL;
	}

	r = FUNC2(ti, argv[0], FUNC4(ti->table), &dev);
	if (r)
		return r;

	r = FUNC1(log, ti, argc - 1, argv + 1, dev);
	if (r) {
		FUNC3(ti, dev);
		return r;
	}

	return 0;
}