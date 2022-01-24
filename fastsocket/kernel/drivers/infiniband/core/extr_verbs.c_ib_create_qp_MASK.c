#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ib_qp_init_attr {scalar_t__ qp_type; TYPE_3__* send_cq; TYPE_2__* srq; TYPE_1__* recv_cq; struct ib_qp* qp_context; int /*<<< orphan*/  event_handler; TYPE_4__* xrcd; } ;
struct ib_qp {scalar_t__ qp_type; TYPE_4__* xrcd; TYPE_3__* send_cq; struct ib_pd* pd; TYPE_2__* srq; TYPE_1__* recv_cq; struct ib_qp* qp_context; int /*<<< orphan*/  event_handler; struct ib_device* device; int /*<<< orphan*/  open_list; int /*<<< orphan*/  usecnt; int /*<<< orphan*/ * uobject; struct ib_qp* real_qp; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; struct ib_device* device; } ;
struct ib_device {int /*<<< orphan*/  (* destroy_qp ) (struct ib_qp*) ;struct ib_qp* (* create_qp ) (struct ib_pd*,struct ib_qp_init_attr*,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  usecnt; struct ib_device* device; } ;
struct TYPE_7__ {int /*<<< orphan*/  usecnt; } ;
struct TYPE_6__ {int /*<<< orphan*/  usecnt; } ;
struct TYPE_5__ {int /*<<< orphan*/  usecnt; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_XRC_INI ; 
 scalar_t__ IB_QPT_XRC_TGT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct ib_qp*) ; 
 struct ib_qp* FUNC3 (struct ib_qp*,int /*<<< orphan*/ ,struct ib_qp*) ; 
 int /*<<< orphan*/  __ib_shared_qp_event_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_qp* FUNC6 (struct ib_pd*,struct ib_qp_init_attr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_qp*) ; 

struct ib_qp *FUNC8(struct ib_pd *pd,
			   struct ib_qp_init_attr *qp_init_attr)
{
	struct ib_qp *qp, *real_qp;
	struct ib_device *device;

	device = pd ? pd->device : qp_init_attr->xrcd->device;
	qp = device->create_qp(pd, qp_init_attr, NULL);

	if (!FUNC1(qp)) {
		qp->device     = device;
		qp->real_qp    = qp;
		qp->uobject    = NULL;
		qp->qp_type    = qp_init_attr->qp_type;

		FUNC5(&qp->usecnt, 0);
		if (qp_init_attr->qp_type == IB_QPT_XRC_TGT) {
			qp->event_handler = __ib_shared_qp_event_handler;
			qp->qp_context = qp;
			qp->pd = NULL;
			qp->send_cq = qp->recv_cq = NULL;
			qp->srq = NULL;
			qp->xrcd = qp_init_attr->xrcd;
			FUNC4(&qp_init_attr->xrcd->usecnt);
			FUNC0(&qp->open_list);

			real_qp = qp;
			qp = FUNC3(real_qp, qp_init_attr->event_handler,
					  qp_init_attr->qp_context);
			if (!FUNC1(qp))
				FUNC2(qp_init_attr->xrcd, real_qp);
			else
				real_qp->device->destroy_qp(real_qp);
		} else {
			qp->event_handler = qp_init_attr->event_handler;
			qp->qp_context = qp_init_attr->qp_context;
			if (qp_init_attr->qp_type == IB_QPT_XRC_INI) {
				qp->recv_cq = NULL;
				qp->srq = NULL;
			} else {
				qp->recv_cq = qp_init_attr->recv_cq;
				FUNC4(&qp_init_attr->recv_cq->usecnt);
				qp->srq = qp_init_attr->srq;
				if (qp->srq)
					FUNC4(&qp_init_attr->srq->usecnt);
			}

			qp->pd	    = pd;
			qp->send_cq = qp_init_attr->send_cq;
			qp->xrcd    = NULL;

			FUNC4(&pd->usecnt);
			FUNC4(&qp_init_attr->send_cq->usecnt);
		}
	}

	return qp;
}