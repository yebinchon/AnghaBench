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
struct dm_target {char* error; int num_flush_requests; int num_discard_requests; struct delay_c* private; int /*<<< orphan*/  table; } ;
struct delay_c {unsigned long long start_read; unsigned long long read_delay; unsigned long long start_write; unsigned long long write_delay; int /*<<< orphan*/ * dev_read; int /*<<< orphan*/ * dev_write; int /*<<< orphan*/  may_delay; int /*<<< orphan*/  timer_lock; int /*<<< orphan*/  delayed_bios; int /*<<< orphan*/  flush_expired_bios; int /*<<< orphan*/  delay_timer; int /*<<< orphan*/  delayed_pool; scalar_t__ writes; scalar_t__ reads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  delayed_cache ; 
 scalar_t__ FUNC4 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_target*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flush_expired_bios ; 
 int /*<<< orphan*/  handle_delayed_timer ; 
 int /*<<< orphan*/  FUNC7 (struct delay_c*) ; 
 struct delay_c* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC12 (char*,char*,unsigned long long*,char*) ; 

__attribute__((used)) static int FUNC13(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct delay_c *dc;
	unsigned long long tmpll;
	char dummy;

	if (argc != 3 && argc != 6) {
		ti->error = "requires exactly 3 or 6 arguments";
		return -EINVAL;
	}

	dc = FUNC8(sizeof(*dc), GFP_KERNEL);
	if (!dc) {
		ti->error = "Cannot allocate context";
		return -ENOMEM;
	}

	dc->reads = dc->writes = 0;

	if (FUNC12(argv[1], "%llu%c", &tmpll, &dummy) != 1) {
		ti->error = "Invalid device sector";
		goto bad;
	}
	dc->start_read = tmpll;

	if (FUNC12(argv[2], "%u%c", &dc->read_delay, &dummy) != 1) {
		ti->error = "Invalid delay";
		goto bad;
	}

	if (FUNC4(ti, argv[0], FUNC6(ti->table),
			  &dc->dev_read)) {
		ti->error = "Device lookup failed";
		goto bad;
	}

	dc->dev_write = NULL;
	if (argc == 3)
		goto out;

	if (FUNC12(argv[4], "%llu%c", &tmpll, &dummy) != 1) {
		ti->error = "Invalid write device sector";
		goto bad_dev_read;
	}
	dc->start_write = tmpll;

	if (FUNC12(argv[5], "%u%c", &dc->write_delay, &dummy) != 1) {
		ti->error = "Invalid write delay";
		goto bad_dev_read;
	}

	if (FUNC4(ti, argv[3], FUNC6(ti->table),
			  &dc->dev_write)) {
		ti->error = "Write device lookup failed";
		goto bad_dev_read;
	}

out:
	dc->delayed_pool = FUNC9(128, delayed_cache);
	if (!dc->delayed_pool) {
		FUNC0("Couldn't create delayed bio pool.");
		goto bad_dev_write;
	}

	FUNC11(&dc->delay_timer, handle_delayed_timer, (unsigned long)dc);

	FUNC2(&dc->flush_expired_bios, flush_expired_bios);
	FUNC1(&dc->delayed_bios);
	FUNC10(&dc->timer_lock);
	FUNC3(&dc->may_delay, 1);

	ti->num_flush_requests = 1;
	ti->num_discard_requests = 1;
	ti->private = dc;
	return 0;

bad_dev_write:
	if (dc->dev_write)
		FUNC5(ti, dc->dev_write);
bad_dev_read:
	FUNC5(ti, dc->dev_read);
bad:
	FUNC7(dc);
	return -EINVAL;
}