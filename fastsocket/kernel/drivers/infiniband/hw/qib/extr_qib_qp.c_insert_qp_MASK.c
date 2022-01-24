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
struct TYPE_2__ {int qp_num; int /*<<< orphan*/  device; } ;
struct qib_qp {int /*<<< orphan*/  next; TYPE_1__ ibqp; int /*<<< orphan*/  refcount; int /*<<< orphan*/  port_num; } ;
struct qib_ibport {int /*<<< orphan*/  qp1; int /*<<< orphan*/  qp0; } ;
struct qib_ibdev {int /*<<< orphan*/  qpt_lock; int /*<<< orphan*/ * qp_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct qib_ibdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct qib_ibport* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct qib_ibdev *dev, struct qib_qp *qp)
{
	struct qib_ibport *ibp = FUNC6(qp->ibqp.device, qp->port_num);
	unsigned long flags;
	unsigned n = FUNC1(dev, qp->ibqp.qp_num);

	FUNC3(&dev->qpt_lock, flags);
	FUNC0(&qp->refcount);

	if (qp->ibqp.qp_num == 0)
		FUNC2(ibp->qp0, qp);
	else if (qp->ibqp.qp_num == 1)
		FUNC2(ibp->qp1, qp);
	else {
		qp->next = dev->qp_table[n];
		FUNC2(dev->qp_table[n], qp);
	}

	FUNC4(&dev->qpt_lock, flags);
	FUNC5();
}