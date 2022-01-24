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
struct ipath_ibdev {scalar_t__ n_ahs_allocated; int /*<<< orphan*/  n_ahs_lock; } ;
struct ib_ah {int dummy; } ;
struct ib_ah_attr {scalar_t__ dlid; int ah_flags; int port_num; int /*<<< orphan*/  static_rate; } ;
struct ipath_ah {struct ib_ah ibah; struct ib_ah_attr attr; } ;
struct ib_pd {TYPE_1__* device; } ;
struct TYPE_2__ {int phys_port_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_ah* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IB_AH_GRH ; 
 scalar_t__ IPATH_MULTICAST_LID_BASE ; 
 scalar_t__ IPATH_PERMISSIVE_LID ; 
 scalar_t__ ib_ipath_max_ahs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_ah*) ; 
 struct ipath_ah* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipath_ibdev* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static struct ib_ah *FUNC7(struct ib_pd *pd,
				     struct ib_ah_attr *ah_attr)
{
	struct ipath_ah *ah;
	struct ib_ah *ret;
	struct ipath_ibdev *dev = FUNC6(pd->device);
	unsigned long flags;

	/* A multicast address requires a GRH (see ch. 8.4.1). */
	if (ah_attr->dlid >= IPATH_MULTICAST_LID_BASE &&
	    ah_attr->dlid != IPATH_PERMISSIVE_LID &&
	    !(ah_attr->ah_flags & IB_AH_GRH)) {
		ret = FUNC0(-EINVAL);
		goto bail;
	}

	if (ah_attr->dlid == 0) {
		ret = FUNC0(-EINVAL);
		goto bail;
	}

	if (ah_attr->port_num < 1 ||
	    ah_attr->port_num > pd->device->phys_port_cnt) {
		ret = FUNC0(-EINVAL);
		goto bail;
	}

	ah = FUNC3(sizeof *ah, GFP_ATOMIC);
	if (!ah) {
		ret = FUNC0(-ENOMEM);
		goto bail;
	}

	FUNC4(&dev->n_ahs_lock, flags);
	if (dev->n_ahs_allocated == ib_ipath_max_ahs) {
		FUNC5(&dev->n_ahs_lock, flags);
		FUNC2(ah);
		ret = FUNC0(-ENOMEM);
		goto bail;
	}

	dev->n_ahs_allocated++;
	FUNC5(&dev->n_ahs_lock, flags);

	/* ib_create_ah() will initialize ah->ibah. */
	ah->attr = *ah_attr;
	ah->attr.static_rate = FUNC1(ah_attr->static_rate);

	ret = &ah->ibah;

bail:
	return ret;
}