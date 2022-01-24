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
struct bio_list {int dummy; } ;
struct mirror_set {int /*<<< orphan*/  kmirrord_wq; int /*<<< orphan*/  rh; int /*<<< orphan*/  lock; struct bio_list holds; int /*<<< orphan*/  suspend; } ;
struct dm_target {scalar_t__ private; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* presuspend ) (struct dm_dirty_log*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _kmirrord_recovery_stopped ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*) ; 
 struct bio* FUNC3 (struct bio_list*) ; 
 struct dm_dirty_log* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mirror_set*,struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct dm_dirty_log*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct dm_target *ti)
{
	struct mirror_set *ms = (struct mirror_set *) ti->private;
	struct dm_dirty_log *log = FUNC4(ms->rh);

	struct bio_list holds;
	struct bio *bio;

	FUNC1(&ms->suspend, 1);

	/*
	 * Process bios in the hold list to start recovery waiting
	 * for bios in the hold list. After the process, no bio has
	 * a chance to be added in the hold list because ms->suspend
	 * is set.
	 */
	FUNC9(&ms->lock);
	holds = ms->holds;
	FUNC2(&ms->holds);
	FUNC10(&ms->lock);

	while ((bio = FUNC3(&holds)))
		FUNC8(ms, bio);

	/*
	 * We must finish up all the work that we've
	 * generated (i.e. recovery work).
	 */
	FUNC6(ms->rh);

	FUNC12(_kmirrord_recovery_stopped,
		   !FUNC5(ms->rh));

	if (log->type->presuspend && log->type->presuspend(log))
		/* FIXME: need better error handling */
		FUNC0("log presuspend failed");

	/*
	 * Now that recovery is complete/stopped and the
	 * delayed bios are queued, we need to wait for
	 * the worker thread to complete.  This way,
	 * we know that all of our I/O has been pushed.
	 */
	FUNC7(ms->kmirrord_wq);
}