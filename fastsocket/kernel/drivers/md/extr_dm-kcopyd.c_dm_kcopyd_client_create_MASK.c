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
struct dm_kcopyd_throttle {int dummy; } ;
struct dm_kcopyd_client {int /*<<< orphan*/  job_pool; int /*<<< orphan*/  kcopyd_wq; int /*<<< orphan*/  nr_jobs; int /*<<< orphan*/  destroyq; int /*<<< orphan*/  io_client; scalar_t__ nr_free_pages; scalar_t__ nr_reserved_pages; int /*<<< orphan*/ * pages; int /*<<< orphan*/  kcopyd_work; int /*<<< orphan*/  unplug; struct dm_kcopyd_throttle* throttle; int /*<<< orphan*/  pages_jobs; int /*<<< orphan*/  io_jobs; int /*<<< orphan*/  complete_jobs; int /*<<< orphan*/  job_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dm_kcopyd_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_JOBS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESERVE_PAGES ; 
 int /*<<< orphan*/  _job_cache ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_kcopyd_client*) ; 
 int FUNC7 (struct dm_kcopyd_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  do_work ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_kcopyd_client*) ; 
 struct dm_kcopyd_client* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

struct dm_kcopyd_client *FUNC18(struct dm_kcopyd_throttle *throttle)
{
	int r = -ENOMEM;
	struct dm_kcopyd_client *kc;

	kc = FUNC13(sizeof(*kc), GFP_KERNEL);
	if (!kc)
		return FUNC0(-ENOMEM);

	FUNC17(&kc->job_lock);
	FUNC1(&kc->complete_jobs);
	FUNC1(&kc->io_jobs);
	FUNC1(&kc->pages_jobs);
	kc->throttle = throttle;

	FUNC16(kc->unplug, 0, sizeof(kc->unplug));

	kc->job_pool = FUNC14(MIN_JOBS, _job_cache);
	if (!kc->job_pool)
		goto bad_slab;

	FUNC2(&kc->kcopyd_work, do_work);
	kc->kcopyd_wq = FUNC8("kcopyd");
	if (!kc->kcopyd_wq)
		goto bad_workqueue;

	kc->pages = NULL;
	kc->nr_reserved_pages = kc->nr_free_pages = 0;
	r = FUNC7(kc, RESERVE_PAGES);
	if (r)
		goto bad_client_pages;

	kc->io_client = FUNC10();
	if (FUNC3(kc->io_client)) {
		r = FUNC4(kc->io_client);
		goto bad_io_client;
	}

	FUNC11(&kc->destroyq);
	FUNC5(&kc->nr_jobs, 0);

	return kc;

bad_io_client:
	FUNC6(kc);
bad_client_pages:
	FUNC9(kc->kcopyd_wq);
bad_workqueue:
	FUNC15(kc->job_pool);
bad_slab:
	FUNC12(kc);

	return FUNC0(r);
}