#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
union map_info {struct dm_mpath_io* ptr; } ;
struct request {int /*<<< orphan*/  rq_disk; int /*<<< orphan*/  q; int /*<<< orphan*/  queuelist; } ;
struct TYPE_10__ {TYPE_1__* dev; } ;
struct pgpath {TYPE_5__ path; TYPE_3__* pg; } ;
struct multipath {scalar_t__ repeat_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  process_queued_ios; scalar_t__ queue_io; int /*<<< orphan*/  pg_init_in_progress; scalar_t__ pg_init_required; int /*<<< orphan*/  queue_size; int /*<<< orphan*/  queued_ios; scalar_t__ queue_if_no_path; struct pgpath* current_pgpath; } ;
struct dm_mpath_io {size_t nr_bytes; struct pgpath* pgpath; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
struct TYPE_9__ {TYPE_2__* type; } ;
struct TYPE_8__ {TYPE_4__ ps; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* start_io ) (TYPE_4__*,TYPE_5__*,size_t) ;} ;
struct TYPE_6__ {struct block_device* bdev; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_REQUEUE ; 
 int DM_MAPIO_SUBMITTED ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct multipath*,size_t) ; 
 scalar_t__ FUNC1 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 size_t FUNC3 (struct request*) ; 
 int /*<<< orphan*/  kmultipathd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_5__*,size_t) ; 

__attribute__((used)) static int FUNC9(struct multipath *m, struct request *clone,
		  union map_info *map_context, unsigned was_queued)
{
	int r = DM_MAPIO_REMAPPED;
	size_t nr_bytes = FUNC3(clone);
	unsigned long flags;
	struct pgpath *pgpath;
	struct block_device *bdev;
	struct dm_mpath_io *mpio = map_context->ptr;

	FUNC6(&m->lock, flags);

	/* Do we need to select a new pgpath? */
	if (!m->current_pgpath ||
	    (!m->queue_io && (m->repeat_count && --m->repeat_count == 0)))
		FUNC0(m, nr_bytes);

	pgpath = m->current_pgpath;

	if (was_queued)
		m->queue_size--;

	if ((pgpath && m->queue_io) ||
	    (!pgpath && m->queue_if_no_path)) {
		/* Queue for the daemon to resubmit */
		FUNC4(&clone->queuelist, &m->queued_ios);
		m->queue_size++;
		if ((m->pg_init_required && !m->pg_init_in_progress) ||
		    !m->queue_io)
			FUNC5(kmultipathd, &m->process_queued_ios);
		pgpath = NULL;
		r = DM_MAPIO_SUBMITTED;
	} else if (pgpath) {
		bdev = pgpath->path.dev->bdev;
		clone->q = FUNC2(bdev);
		clone->rq_disk = bdev->bd_disk;
	} else if (FUNC1(m))
		r = DM_MAPIO_REQUEUE;
	else
		r = -EIO;	/* Failed */

	mpio->pgpath = pgpath;
	mpio->nr_bytes = nr_bytes;

	if (r == DM_MAPIO_REMAPPED && pgpath->pg->ps.type->start_io)
		pgpath->pg->ps.type->start_io(&pgpath->pg->ps, &pgpath->path,
					      nr_bytes);

	FUNC7(&m->lock, flags);

	return r;
}