#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int qp_type; } ;
struct qib_qp {size_t state; int /*<<< orphan*/  r_lock; TYPE_1__ ibqp; } ;
struct qib_ibport {int /*<<< orphan*/  n_pkt_drops; } ;
struct qib_ib_header {int dummy; } ;
struct qib_ctxtdata {TYPE_2__* ppd; } ;
struct TYPE_4__ {struct qib_ibport ibport_data; } ;

/* Variables and functions */
#define  IB_QPT_GSI 132 
#define  IB_QPT_RC 131 
#define  IB_QPT_SMI 130 
#define  IB_QPT_UC 129 
#define  IB_QPT_UD 128 
 int QIB_PROCESS_RECV_OK ; 
 int /*<<< orphan*/  ib_qib_disable_sma ; 
 int* ib_qib_state_ops ; 
 int /*<<< orphan*/  FUNC0 (struct qib_ctxtdata*,struct qib_ib_header*,int,void*,int /*<<< orphan*/ ,struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_ibport*,struct qib_ib_header*,int,void*,int /*<<< orphan*/ ,struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_ibport*,struct qib_ib_header*,int,void*,int /*<<< orphan*/ ,struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct qib_ctxtdata *rcd, struct qib_ib_header *hdr,
		       int has_grh, void *data, u32 tlen, struct qib_qp *qp)
{
	struct qib_ibport *ibp = &rcd->ppd->ibport_data;

	FUNC3(&qp->r_lock);

	/* Check for valid receive state. */
	if (!(ib_qib_state_ops[qp->state] & QIB_PROCESS_RECV_OK)) {
		ibp->n_pkt_drops++;
		goto unlock;
	}

	switch (qp->ibqp.qp_type) {
	case IB_QPT_SMI:
	case IB_QPT_GSI:
		if (ib_qib_disable_sma)
			break;
		/* FALLTHROUGH */
	case IB_QPT_UD:
		FUNC2(ibp, hdr, has_grh, data, tlen, qp);
		break;

	case IB_QPT_RC:
		FUNC0(rcd, hdr, has_grh, data, tlen, qp);
		break;

	case IB_QPT_UC:
		FUNC1(ibp, hdr, has_grh, data, tlen, qp);
		break;

	default:
		break;
	}

unlock:
	FUNC4(&qp->r_lock);
}