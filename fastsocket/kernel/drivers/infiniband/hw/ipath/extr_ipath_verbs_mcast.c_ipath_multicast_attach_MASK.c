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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u16 ;
struct ipath_qp {int dummy; } ;
struct ipath_mcast_qp {int dummy; } ;
struct ipath_mcast {int dummy; } ;
struct ipath_ibdev {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;

/* Variables and functions */
#define  EEXIST 130 
 int EINVAL ; 
#define  ENOMEM 129 
#define  ESRCH 128 
 int FUNC0 (struct ipath_ibdev*,struct ipath_mcast*,struct ipath_mcast_qp*) ; 
 struct ipath_mcast* FUNC1 (union ib_gid*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_mcast*) ; 
 struct ipath_mcast_qp* FUNC3 (struct ipath_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_mcast_qp*) ; 
 struct ipath_ibdev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct ipath_qp* FUNC6 (struct ib_qp*) ; 

int FUNC7(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
	struct ipath_qp *qp = FUNC6(ibqp);
	struct ipath_ibdev *dev = FUNC5(ibqp->device);
	struct ipath_mcast *mcast;
	struct ipath_mcast_qp *mqp;
	int ret;

	/*
	 * Allocate data structures since its better to do this outside of
	 * spin locks and it will most likely be needed.
	 */
	mcast = FUNC1(gid);
	if (mcast == NULL) {
		ret = -ENOMEM;
		goto bail;
	}
	mqp = FUNC3(qp);
	if (mqp == NULL) {
		FUNC2(mcast);
		ret = -ENOMEM;
		goto bail;
	}
	switch (FUNC0(dev, mcast, mqp)) {
	case ESRCH:
		/* Neither was used: can't attach the same QP twice. */
		FUNC4(mqp);
		FUNC2(mcast);
		ret = -EINVAL;
		goto bail;
	case EEXIST:		/* The mcast wasn't used */
		FUNC2(mcast);
		break;
	case ENOMEM:
		/* Exceeded the maximum number of mcast groups. */
		FUNC4(mqp);
		FUNC2(mcast);
		ret = -ENOMEM;
		goto bail;
	default:
		break;
	}

	ret = 0;

bail:
	return ret;
}