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
struct TYPE_2__ {int state; } ;
struct c4iw_qp {int /*<<< orphan*/  lock; TYPE_1__ attr; } ;
typedef  enum c4iw_qp_state { ____Placeholder_c4iw_qp_state } c4iw_qp_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct c4iw_qp *qhp, enum c4iw_qp_state state)
{
	unsigned long flag;
	FUNC0(&qhp->lock, flag);
	qhp->attr.state = state;
	FUNC1(&qhp->lock, flag);
}