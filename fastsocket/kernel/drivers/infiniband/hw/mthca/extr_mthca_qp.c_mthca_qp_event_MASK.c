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
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  qp_context; int /*<<< orphan*/  (* event_handler ) (struct ib_event*,int /*<<< orphan*/ ) ;} ;
struct mthca_qp {int /*<<< orphan*/  wait; int /*<<< orphan*/  refcount; TYPE_3__ ibqp; int /*<<< orphan*/  alt_port; int /*<<< orphan*/  port; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  qp; } ;
struct TYPE_5__ {int num_qps; } ;
struct mthca_dev {TYPE_4__ qp_table; int /*<<< orphan*/  ib_dev; TYPE_1__ limits; } ;
struct TYPE_6__ {TYPE_3__* qp; } ;
struct ib_event {int event; TYPE_2__ element; int /*<<< orphan*/ * device; } ;
typedef  enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;

/* Variables and functions */
 int IB_EVENT_PATH_MIG ; 
 struct mthca_qp* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mthca_dev *dev, u32 qpn,
		    enum ib_event_type event_type)
{
	struct mthca_qp *qp;
	struct ib_event event;

	FUNC2(&dev->qp_table.lock);
	qp = FUNC0(&dev->qp_table.qp, qpn & (dev->limits.num_qps - 1));
	if (qp)
		++qp->refcount;
	FUNC3(&dev->qp_table.lock);

	if (!qp) {
		FUNC1(dev, "Async event %d for bogus QP %08x\n",
			   event_type, qpn);
		return;
	}

	if (event_type == IB_EVENT_PATH_MIG)
		qp->port = qp->alt_port;

	event.device      = &dev->ib_dev;
	event.event       = event_type;
	event.element.qp  = &qp->ibqp;
	if (qp->ibqp.event_handler)
		qp->ibqp.event_handler(&event, qp->ibqp.qp_context);

	FUNC2(&dev->qp_table.lock);
	if (!--qp->refcount)
		FUNC5(&qp->wait);
	FUNC3(&dev->qp_table.lock);
}