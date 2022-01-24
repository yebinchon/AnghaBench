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
struct qib_ibdev {scalar_t__ n_ahs_allocated; int /*<<< orphan*/  n_ahs_lock; } ;
struct ib_ah {int dummy; } ;
struct ib_ah_attr {int dummy; } ;
struct qib_ah {struct ib_ah ibah; int /*<<< orphan*/  refcount; struct ib_ah_attr attr; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_ah* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ib_qib_max_ahs ; 
 int /*<<< orphan*/  FUNC2 (struct qib_ah*) ; 
 struct qib_ah* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct ib_ah_attr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct qib_ibdev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_ah *FUNC8(struct ib_pd *pd,
				   struct ib_ah_attr *ah_attr)
{
	struct qib_ah *ah;
	struct ib_ah *ret;
	struct qib_ibdev *dev = FUNC7(pd->device);
	unsigned long flags;

	if (FUNC4(pd->device, ah_attr)) {
		ret = FUNC0(-EINVAL);
		goto bail;
	}

	ah = FUNC3(sizeof *ah, GFP_ATOMIC);
	if (!ah) {
		ret = FUNC0(-ENOMEM);
		goto bail;
	}

	FUNC5(&dev->n_ahs_lock, flags);
	if (dev->n_ahs_allocated == ib_qib_max_ahs) {
		FUNC6(&dev->n_ahs_lock, flags);
		FUNC2(ah);
		ret = FUNC0(-ENOMEM);
		goto bail;
	}

	dev->n_ahs_allocated++;
	FUNC6(&dev->n_ahs_lock, flags);

	/* ib_create_ah() will initialize ah->ibah. */
	ah->attr = *ah_attr;
	FUNC1(&ah->refcount, 0);

	ret = &ah->ibah;

bail:
	return ret;
}