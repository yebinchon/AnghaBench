#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* dev; } ;
struct pgpath {TYPE_2__ path; } ;
struct multipath {int /*<<< orphan*/  process_queued_ios; int /*<<< orphan*/  lock; scalar_t__ queue_if_no_path; scalar_t__ queue_io; struct pgpath* current_pgpath; } ;
struct dm_target {scalar_t__ len; struct multipath* private; } ;
struct block_device {int /*<<< orphan*/  bd_inode; } ;
typedef  scalar_t__ fmode_t ;
struct TYPE_3__ {scalar_t__ mode; struct block_device* bdev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOTCONN ; 
 int SECTOR_SHIFT ; 
 int FUNC0 (struct block_device*,scalar_t__,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct multipath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmultipathd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct dm_target *ti, unsigned int cmd,
			   unsigned long arg)
{
	struct multipath *m = ti->private;
	struct pgpath *pgpath;
	struct block_device *bdev;
	fmode_t mode;
	unsigned long flags;
	int r;

	bdev = NULL;
	mode = 0;
	r = 0;

	FUNC6(&m->lock, flags);

	if (!m->current_pgpath)
		FUNC1(m, 0);

	pgpath = m->current_pgpath;

	if (pgpath) {
		bdev = pgpath->path.dev->bdev;
		mode = pgpath->path.dev->mode;
	}

	if ((pgpath && m->queue_io) || (!pgpath && m->queue_if_no_path))
		r = -ENOTCONN;
	else if (!bdev)
		r = -EIO;

	FUNC7(&m->lock, flags);

	/*
	 * Only pass ioctls through if the device sizes match exactly.
	 */
	if (!r && ti->len != FUNC3(bdev->bd_inode) >> SECTOR_SHIFT)
		r = FUNC5(NULL, cmd);

	if (r == -ENOTCONN && !FUNC2(current))
		FUNC4(kmultipathd, &m->process_queued_ios);

	return r ? : FUNC0(bdev, mode, cmd, arg);
}