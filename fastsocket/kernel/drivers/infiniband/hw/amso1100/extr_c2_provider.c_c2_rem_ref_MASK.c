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
struct ib_qp {int dummy; } ;
struct c2_qp {int /*<<< orphan*/  wait; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct c2_qp* FUNC2 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ib_qp *ibqp)
{
	struct c2_qp *qp;
	FUNC0(!ibqp);
	qp = FUNC2(ibqp);
	if (FUNC1(&qp->refcount))
		FUNC3(&qp->wait);
}