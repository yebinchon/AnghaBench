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
struct ocrdma_qp {int /*<<< orphan*/  ibqp; } ;
struct ocrdma_dev {int /*<<< orphan*/  ibdev; int /*<<< orphan*/  dev_lock; struct ocrdma_qp** qp_tbl; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct TYPE_2__ {int port_num; int /*<<< orphan*/ * qp; } ;
struct ib_event {int /*<<< orphan*/ * device; TYPE_1__ element; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_PORT_ERR ; 
 int /*<<< orphan*/  IB_EVENT_QP_FATAL ; 
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int IB_QP_STATE ; 
 int OCRDMA_MAX_QP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ib_qp_attr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ocrdma_dev *dev)
{
	int i;
	struct ocrdma_qp *qp, **cur_qp;
	struct ib_event err_event;
	struct ib_qp_attr attrs;
	int attr_mask = IB_QP_STATE;

	attrs.qp_state = IB_QPS_ERR;
	FUNC2(&dev->dev_lock);
	if (dev->qp_tbl) {
		cur_qp = dev->qp_tbl;
		for (i = 0; i < OCRDMA_MAX_QP; i++) {
			qp = cur_qp[i];
			if (qp) {
				/* change the QP state to ERROR */
				FUNC0(&qp->ibqp, &attrs, attr_mask);

				err_event.event = IB_EVENT_QP_FATAL;
				err_event.element.qp = &qp->ibqp;
				err_event.device = &dev->ibdev;
				FUNC1(&err_event);
			}
		}
	}
	FUNC3(&dev->dev_lock);

	err_event.event = IB_EVENT_PORT_ERR;
	err_event.element.port_num = 1;
	err_event.device = &dev->ibdev;
	FUNC1(&err_event);
	return 0;
}