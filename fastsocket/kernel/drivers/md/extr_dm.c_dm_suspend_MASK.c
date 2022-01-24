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
struct mapped_device {int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  queue; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  wq; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_BLOCK_IO_FOR_SUSPEND ; 
 int /*<<< orphan*/  DMF_NOFLUSH_SUSPENDING ; 
 int /*<<< orphan*/  DMF_SUSPENDED ; 
 unsigned int DM_SUSPEND_LOCKFS_FLAG ; 
 unsigned int DM_SUSPEND_NOFLUSH_FLAG ; 
 int EINVAL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dm_table* FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 scalar_t__ FUNC3 (struct mapped_device*) ; 
 scalar_t__ FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_table*) ; 
 int FUNC8 (struct mapped_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct mapped_device *md, unsigned suspend_flags)
{
	struct dm_table *map = NULL;
	int r = 0;
	int do_lockfs = suspend_flags & DM_SUSPEND_LOCKFS_FLAG ? 1 : 0;
	int noflush = suspend_flags & DM_SUSPEND_NOFLUSH_FLAG ? 1 : 0;

	FUNC12(&md->suspend_lock);

	if (FUNC4(md)) {
		r = -EINVAL;
		goto out_unlock;
	}

	map = FUNC1(md);

	/*
	 * DMF_NOFLUSH_SUSPENDING must be set before presuspend.
	 * This flag is cleared before dm_suspend returns.
	 */
	if (noflush)
		FUNC14(DMF_NOFLUSH_SUSPENDING, &md->flags);

	/* This does not get reverted if there's an error later. */
	FUNC6(map);

	/*
	 * Flush I/O to the device.
	 * Any I/O submitted after lock_fs() may not be flushed.
	 * noflush takes precedence over do_lockfs.
	 * (lock_fs() flushes I/Os and waits for them to complete.)
	 */
	if (!noflush && do_lockfs) {
		r = FUNC11(md);
		if (r)
			goto out;
	}

	/*
	 * Here we must make sure that no processes are submitting requests
	 * to target drivers i.e. no one may be executing
	 * __split_and_process_bio. This is called from dm_request and
	 * dm_wq_work.
	 *
	 * To get all processes out of __split_and_process_bio in dm_request,
	 * we take the write lock. To prevent any process from reentering
	 * __split_and_process_bio from dm_request and quiesce the thread
	 * (dm_wq_work), we set BMF_BLOCK_IO_FOR_SUSPEND and call
	 * flush_workqueue(md->wq).
	 */
	FUNC9(&md->io_lock);
	FUNC14(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags);
	FUNC18(&md->io_lock);

	/*
	 * Stop md->queue before flushing md->wq in case request-based
	 * dm defers requests to md->wq from md->queue.
	 */
	if (FUNC3(md))
		FUNC16(md->queue);

	FUNC10(md->wq);

	/*
	 * At this point no more requests are entering target request routines.
	 * We call dm_wait_for_completion to wait for all existing requests
	 * to finish.
	 */
	r = FUNC8(md, TASK_INTERRUPTIBLE);

	FUNC9(&md->io_lock);
	if (noflush)
		FUNC0(DMF_NOFLUSH_SUSPENDING, &md->flags);
	FUNC18(&md->io_lock);

	/* were we interrupted ? */
	if (r < 0) {
		FUNC2(md);

		if (FUNC3(md))
			FUNC15(md->queue);

		FUNC17(md);
		goto out; /* pushback list is already flushed, so skip flush */
	}

	/*
	 * If dm_wait_for_completion returned 0, the device is completely
	 * quiescent now. There is no request-processing activity. All new
	 * requests are being added to md->deferred list.
	 */

	FUNC14(DMF_SUSPENDED, &md->flags);

	FUNC5(map);

out:
	FUNC7(map);

out_unlock:
	FUNC13(&md->suspend_lock);
	return r;
}