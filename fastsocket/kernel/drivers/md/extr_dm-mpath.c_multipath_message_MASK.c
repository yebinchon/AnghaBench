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
struct multipath {int /*<<< orphan*/  work_mutex; } ;
struct dm_target {int /*<<< orphan*/  table; scalar_t__ private; } ;
struct dm_dev {int dummy; } ;
typedef  int /*<<< orphan*/  action_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int EINVAL ; 
 int FUNC1 (struct multipath*,struct dm_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct multipath*,char*,int) ; 
 int FUNC3 (struct dm_target*,char*,int /*<<< orphan*/ ,struct dm_dev**) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_target*,struct dm_dev*) ; 
 scalar_t__ FUNC5 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fail_path ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct multipath*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reinstate_path ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (struct multipath*,char*) ; 

__attribute__((used)) static int FUNC12(struct dm_target *ti, unsigned argc, char **argv)
{
	int r = -EINVAL;
	struct dm_dev *dev;
	struct multipath *m = (struct multipath *) ti->private;
	action_fn action;

	FUNC7(&m->work_mutex);

	if (FUNC5(ti)) {
		r = -EBUSY;
		goto out;
	}

	if (argc == 1) {
		if (!FUNC10(argv[0], "queue_if_no_path")) {
			r = FUNC9(m, 1, 0);
			goto out;
		} else if (!FUNC10(argv[0], "fail_if_no_path")) {
			r = FUNC9(m, 0, 0);
			goto out;
		}
	}

	if (argc != 2) {
		FUNC0("Unrecognised multipath message received.");
		goto out;
	}

	if (!FUNC10(argv[0], "disable_group")) {
		r = FUNC2(m, argv[1], 1);
		goto out;
	} else if (!FUNC10(argv[0], "enable_group")) {
		r = FUNC2(m, argv[1], 0);
		goto out;
	} else if (!FUNC10(argv[0], "switch_group")) {
		r = FUNC11(m, argv[1]);
		goto out;
	} else if (!FUNC10(argv[0], "reinstate_path"))
		action = reinstate_path;
	else if (!FUNC10(argv[0], "fail_path"))
		action = fail_path;
	else {
		FUNC0("Unrecognised multipath message received.");
		goto out;
	}

	r = FUNC3(ti, argv[1], FUNC6(ti->table), &dev);
	if (r) {
		FUNC0("message: error getting device %s",
		       argv[1]);
		goto out;
	}

	r = FUNC1(m, dev, action);

	FUNC4(ti, dev);

out:
	FUNC8(&m->work_mutex);
	return r;
}