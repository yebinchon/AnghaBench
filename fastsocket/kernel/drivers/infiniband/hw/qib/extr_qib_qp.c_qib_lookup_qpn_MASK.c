#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int qp_num; } ;
struct qib_qp {int /*<<< orphan*/  refcount; TYPE_2__ ibqp; int /*<<< orphan*/  next; } ;
struct qib_ibport {int /*<<< orphan*/  qp1; int /*<<< orphan*/  qp0; } ;
struct qib_ibdev {int /*<<< orphan*/ * qp_table; } ;
struct TYPE_6__ {TYPE_1__* dd; } ;
struct TYPE_4__ {struct qib_ibdev verbs_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (struct qib_ibport*) ; 
 unsigned int FUNC2 (struct qib_ibdev*,int) ; 
 struct qib_qp* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

struct qib_qp *FUNC7(struct qib_ibport *ibp, u32 qpn)
{
	struct qib_qp *qp = NULL;

	if (FUNC6(qpn <= 1)) {
		FUNC4();
		if (qpn == 0)
			qp = FUNC3(ibp->qp0);
		else
			qp = FUNC3(ibp->qp1);
	} else {
		struct qib_ibdev *dev = &FUNC1(ibp)->dd->verbs_dev;
		unsigned n = FUNC2(dev, qpn);

		FUNC4();
		for (qp = FUNC3(dev->qp_table[n]); qp;
			qp = FUNC3(qp->next))
			if (qp->ibqp.qp_num == qpn)
				break;
	}
	if (qp)
		if (FUNC6(!FUNC0(&qp->refcount)))
			qp = NULL;

	FUNC5();
	return qp;
}