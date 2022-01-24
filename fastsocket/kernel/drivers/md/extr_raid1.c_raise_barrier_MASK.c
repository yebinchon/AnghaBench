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
struct r1conf {scalar_t__ barrier; int /*<<< orphan*/  resync_lock; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  nr_waiting; } ;

/* Variables and functions */
 scalar_t__ RESYNC_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (struct r1conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct r1conf *conf)
{
	FUNC1(&conf->resync_lock);

	/* Wait until no block IO is waiting */
	FUNC3(conf->wait_barrier, !conf->nr_waiting,
			    conf->resync_lock,
			    FUNC0(conf));

	/* block any new IO from starting */
	conf->barrier++;

	/* Now wait for all pending IO to complete */
	FUNC3(conf->wait_barrier,
			    !conf->nr_pending && conf->barrier < RESYNC_DEPTH,
			    conf->resync_lock,
			    FUNC0(conf));

	FUNC2(&conf->resync_lock);
}