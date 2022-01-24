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
struct linear_c {unsigned long long start; int /*<<< orphan*/  dev; } ;
struct dm_target {char* error; int num_flush_requests; int num_discard_requests; struct linear_c* private; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct linear_c*) ; 
 struct linear_c* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char*,unsigned long long*,char*) ; 

__attribute__((used)) static int FUNC5(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct linear_c *lc;
	unsigned long long tmp;
	char dummy;

	if (argc != 2) {
		ti->error = "Invalid argument count";
		return -EINVAL;
	}

	lc = FUNC3(sizeof(*lc), GFP_KERNEL);
	if (lc == NULL) {
		ti->error = "dm-linear: Cannot allocate linear context";
		return -ENOMEM;
	}

	if (FUNC4(argv[1], "%llu%c", &tmp, &dummy) != 1) {
		ti->error = "dm-linear: Invalid device sector";
		goto bad;
	}
	lc->start = tmp;

	if (FUNC0(ti, argv[0], FUNC1(ti->table), &lc->dev)) {
		ti->error = "dm-linear: Device lookup failed";
		goto bad;
	}

	ti->num_flush_requests = 1;
	ti->num_discard_requests = 1;
	ti->private = lc;
	return 0;

      bad:
	FUNC2(lc);
	return -EINVAL;
}