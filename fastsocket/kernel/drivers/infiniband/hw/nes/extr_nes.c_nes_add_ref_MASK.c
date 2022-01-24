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
struct nes_qp {int /*<<< orphan*/  refcount; } ;
struct ib_qp {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_DBG_QP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nes_qp* FUNC3 (struct ib_qp*) ; 

void FUNC4(struct ib_qp *ibqp)
{
	struct nes_qp *nesqp;

	nesqp = FUNC3(ibqp);
	FUNC2(NES_DBG_QP, "Bumping refcount for QP%u.  Pre-inc value = %u\n",
			ibqp->qp_num, FUNC1(&nesqp->refcount));
	FUNC0(&nesqp->refcount);
}