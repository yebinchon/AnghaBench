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
struct ib_xrcd {int /*<<< orphan*/  usecnt; int /*<<< orphan*/  tgt_qp_mutex; } ;
struct ib_qp {int /*<<< orphan*/  xrcd_list; int /*<<< orphan*/  usecnt; struct ib_xrcd* xrcd; struct ib_qp* real_qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_xrcd*,struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_qp*) ; 
 int FUNC4 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ib_qp *qp)
{
	struct ib_xrcd *xrcd;
	struct ib_qp *real_qp;
	int ret;

	real_qp = qp->real_qp;
	xrcd = real_qp->xrcd;

	FUNC6(&xrcd->tgt_qp_mutex);
	FUNC3(qp);
	if (FUNC2(&real_qp->usecnt) == 0)
		FUNC5(&real_qp->xrcd_list);
	else
		real_qp = NULL;
	FUNC7(&xrcd->tgt_qp_mutex);

	if (real_qp) {
		ret = FUNC4(real_qp);
		if (!ret)
			FUNC1(&xrcd->usecnt);
		else
			FUNC0(xrcd, real_qp);
	}

	return 0;
}