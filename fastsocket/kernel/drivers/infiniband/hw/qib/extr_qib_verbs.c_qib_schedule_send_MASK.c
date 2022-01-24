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
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct qib_qp {int /*<<< orphan*/  s_work; int /*<<< orphan*/  port_num; TYPE_1__ ibqp; } ;
struct qib_pportdata {int /*<<< orphan*/  qib_wq; } ;
struct qib_ibport {int dummy; } ;

/* Variables and functions */
 struct qib_pportdata* FUNC0 (struct qib_ibport*) ; 
 scalar_t__ FUNC1 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct qib_ibport* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct qib_qp *qp)
{
	if (FUNC1(qp)) {
		struct qib_ibport *ibp =
			FUNC3(qp->ibqp.device, qp->port_num);
		struct qib_pportdata *ppd = FUNC0(ibp);

		FUNC2(ppd->qib_wq, &qp->s_work);
	}
}