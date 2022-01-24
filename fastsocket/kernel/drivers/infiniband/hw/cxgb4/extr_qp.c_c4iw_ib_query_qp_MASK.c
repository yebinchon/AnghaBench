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
struct ib_qp_init_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct c4iw_qp {TYPE_1__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 struct c4iw_qp* FUNC1 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct ib_qp *ibqp, struct ib_qp_attr *attr,
		     int attr_mask, struct ib_qp_init_attr *init_attr)
{
	struct c4iw_qp *qhp = FUNC1(ibqp);

	FUNC0(attr, 0, sizeof *attr);
	FUNC0(init_attr, 0, sizeof *init_attr);
	attr->qp_state = FUNC2(qhp->attr.state);
	return 0;
}