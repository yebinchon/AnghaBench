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
struct ib_pd {int dummy; } ;
struct ipath_pd {struct ib_pd ibpd; int /*<<< orphan*/  user; } ;
struct ipath_ibdev {scalar_t__ n_pds_allocated; int /*<<< orphan*/  n_pds_lock; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_pd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ ib_ipath_max_pds ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_pd*) ; 
 struct ipath_pd* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ipath_ibdev* FUNC5 (struct ib_device*) ; 

__attribute__((used)) static struct ib_pd *FUNC6(struct ib_device *ibdev,
				    struct ib_ucontext *context,
				    struct ib_udata *udata)
{
	struct ipath_ibdev *dev = FUNC5(ibdev);
	struct ipath_pd *pd;
	struct ib_pd *ret;

	/*
	 * This is actually totally arbitrary.	Some correctness tests
	 * assume there's a maximum number of PDs that can be allocated.
	 * We don't actually have this limit, but we fail the test if
	 * we allow allocations of more than we report for this value.
	 */

	pd = FUNC2(sizeof *pd, GFP_KERNEL);
	if (!pd) {
		ret = FUNC0(-ENOMEM);
		goto bail;
	}

	FUNC3(&dev->n_pds_lock);
	if (dev->n_pds_allocated == ib_ipath_max_pds) {
		FUNC4(&dev->n_pds_lock);
		FUNC1(pd);
		ret = FUNC0(-ENOMEM);
		goto bail;
	}

	dev->n_pds_allocated++;
	FUNC4(&dev->n_pds_lock);

	/* ib_alloc_pd() will initialize pd->ibpd. */
	pd->user = udata != NULL;

	ret = &pd->ibpd;

bail:
	return ret;
}