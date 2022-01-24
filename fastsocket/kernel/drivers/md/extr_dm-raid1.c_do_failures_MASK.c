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
struct mirror_set {int /*<<< orphan*/  rh; scalar_t__ in_sync; int /*<<< orphan*/  log_failure; } ;
struct bio_list {int /*<<< orphan*/  head; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 scalar_t__ FUNC3 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC5 (struct mirror_set*,struct bio*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct mirror_set *ms, struct bio_list *failures)
{
	struct bio *bio;

	if (FUNC6(!failures->head))
		return;

	/*
	 * If the log has failed, unattempted writes are being
	 * put on the holds list.  We can't issue those writes
	 * until a log has been marked, so we must store them.
	 *
	 * If a 'noflush' suspend is in progress, we can requeue
	 * the I/O's to the core.  This give userspace a chance
	 * to reconfigure the mirror, at which point the core
	 * will reissue the writes.  If the 'noflush' flag is
	 * not set, we have no choice but to return errors.
	 *
	 * Some writes on the failures list may have been
	 * submitted before the log failure and represent a
	 * failure to write to one of the devices.  It is ok
	 * for us to treat them the same and requeue them
	 * as well.
	 */
	while ((bio = FUNC1(failures))) {
		if (!ms->log_failure) {
			ms->in_sync = 0;
			FUNC2(ms->rh, bio);
		}

		/*
		 * If all the legs are dead, fail the I/O.
		 * If we have been told to handle errors, hold the bio
		 * and wait for userspace to deal with the problem.
		 * Otherwise pretend that the I/O succeeded. (This would
		 * be wrong if the failed leg returned after reboot and
		 * got replicated back to the good legs.)
		 */
		if (!FUNC4(ms))
			FUNC0(bio, -EIO);
		else if (FUNC3(ms))
			FUNC5(ms, bio);
		else
			FUNC0(bio, 0);
	}
}