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
struct qib_qp {scalar_t__ state; int /*<<< orphan*/  port_num; } ;
struct qib_mcast_qp {int dummy; } ;
struct qib_mcast {int dummy; } ;
struct qib_ibport {int dummy; } ;
struct qib_ibdev {int dummy; } ;
struct ib_qp {int qp_num; int /*<<< orphan*/  device; } ;

/* Variables and functions */
#define  EEXIST 130 
 int EINVAL ; 
#define  ENOMEM 129 
#define  ESRCH 128 
 scalar_t__ IB_QPS_RESET ; 
 int FUNC0 (struct qib_ibdev*,struct qib_ibport*,struct qib_mcast*,struct qib_mcast_qp*) ; 
 struct qib_mcast* FUNC1 (union ib_gid*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_mcast*) ; 
 struct qib_mcast_qp* FUNC3 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_mcast_qp*) ; 
 struct qib_ibdev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct qib_ibport* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qib_qp* FUNC7 (struct ib_qp*) ; 

int FUNC8(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
	struct qib_qp *qp = FUNC7(ibqp);
	struct qib_ibdev *dev = FUNC5(ibqp->device);
	struct qib_ibport *ibp;
	struct qib_mcast *mcast;
	struct qib_mcast_qp *mqp;
	int ret;

	if (ibqp->qp_num <= 1 || qp->state == IB_QPS_RESET) {
		ret = -EINVAL;
		goto bail;
	}

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
	ibp = FUNC6(ibqp->device, qp->port_num);
	switch (FUNC0(dev, ibp, mcast, mqp)) {
	case ESRCH:
		/* Neither was used: OK to attach the same QP twice. */
		FUNC4(mqp);
		FUNC2(mcast);
		break;

	case EEXIST:            /* The mcast wasn't used */
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