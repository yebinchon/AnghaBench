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
struct r1conf {scalar_t__ nr_pending; scalar_t__ nr_queued; int /*<<< orphan*/  resync_lock; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  nr_waiting; int /*<<< orphan*/  barrier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r1conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct r1conf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct r1conf *conf, int extra)
{
	/* stop syncio and normal IO and wait for everything to
	 * go quite.
	 * We increment barrier and nr_waiting, and then
	 * wait until nr_pending match nr_queued+extra
	 * This is called in the context of one normal IO request
	 * that has failed. Thus any sync request that might be pending
	 * will be blocked by nr_pending, and we need to wait for
	 * pending IO requests to complete or be queued for re-try.
	 * Thus the number queued (nr_queued) plus this request (extra)
	 * must match the number of pending IOs (nr_pending) before
	 * we continue.
	 */
	FUNC2(&conf->resync_lock);
	conf->barrier++;
	conf->nr_waiting++;
	FUNC4(conf->wait_barrier,
				conf->nr_pending == conf->nr_queued+extra,
				conf->resync_lock,
			    ({ FUNC0(conf);
			       FUNC1(conf); }));
	FUNC3(&conf->resync_lock);
}