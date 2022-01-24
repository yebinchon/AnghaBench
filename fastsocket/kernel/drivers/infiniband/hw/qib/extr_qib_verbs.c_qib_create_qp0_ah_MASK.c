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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  pd; } ;
struct qib_qp {TYPE_1__ ibqp; } ;
struct qib_ibport {int /*<<< orphan*/  qp0; } ;
struct ib_ah_attr {int /*<<< orphan*/  port_num; int /*<<< orphan*/  dlid; } ;
struct ib_ah {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ib_ah* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ib_ah* FUNC1 (int /*<<< orphan*/ ,struct ib_ah_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_ah_attr*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 (struct qib_ibport*) ; 
 struct qib_qp* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

struct ib_ah *FUNC7(struct qib_ibport *ibp, u16 dlid)
{
	struct ib_ah_attr attr;
	struct ib_ah *ah = FUNC0(-EINVAL);
	struct qib_qp *qp0;

	FUNC2(&attr, 0, sizeof attr);
	attr.dlid = dlid;
	attr.port_num = FUNC3(ibp)->port;
	FUNC5();
	qp0 = FUNC4(ibp->qp0);
	if (qp0)
		ah = FUNC1(qp0->ibqp.pd, &attr);
	FUNC6();
	return ah;
}