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
struct dm_kcopyd_client {int /*<<< orphan*/  job_pool; int /*<<< orphan*/  io_client; int /*<<< orphan*/  kcopyd_wq; int /*<<< orphan*/  pages_jobs; int /*<<< orphan*/  io_jobs; int /*<<< orphan*/  complete_jobs; int /*<<< orphan*/  nr_jobs; int /*<<< orphan*/  destroyq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_kcopyd_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_kcopyd_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(struct dm_kcopyd_client *kc)
{
	/* Wait for completion of all jobs submitted by this client. */
	FUNC8(kc->destroyq, !FUNC1(&kc->nr_jobs));

	FUNC0(!FUNC6(&kc->complete_jobs));
	FUNC0(!FUNC6(&kc->io_jobs));
	FUNC0(!FUNC6(&kc->pages_jobs));
	FUNC3(kc->kcopyd_wq);
	FUNC4(kc->io_client);
	FUNC2(kc);
	FUNC7(kc->job_pool);
	FUNC5(kc);
}