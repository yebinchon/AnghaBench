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
struct nes_qp {int /*<<< orphan*/  ibqp; } ;
struct disconn_work {int /*<<< orphan*/  work; struct nes_qp* nesqp; } ;
struct TYPE_2__ {int /*<<< orphan*/  disconn_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* g_cm_core ; 
 struct disconn_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nes_disconnect_worker ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct nes_qp *nesqp)
{
	struct disconn_work *work;

	work = FUNC1(sizeof *work, GFP_ATOMIC);
	if (!work)
		return -ENOMEM;  /* Timer will clean up */

	FUNC2(&nesqp->ibqp);
	work->nesqp = nesqp;
	FUNC0(&work->work, nes_disconnect_worker);
	FUNC3(g_cm_core->disconn_wq, &work->work);
	return 0;
}