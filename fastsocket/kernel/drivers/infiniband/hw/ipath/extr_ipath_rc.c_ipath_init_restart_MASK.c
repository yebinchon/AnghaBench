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
struct ipath_swqe {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct ipath_qp {int /*<<< orphan*/  timerwait; TYPE_1__ ibqp; int /*<<< orphan*/  path_mtu; int /*<<< orphan*/  s_psn; int /*<<< orphan*/  s_sge; int /*<<< orphan*/  s_len; } ;
struct ipath_ibdev {size_t pending_index; int /*<<< orphan*/  pending_lock; int /*<<< orphan*/ * pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ipath_swqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ipath_ibdev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ipath_qp *qp, struct ipath_swqe *wqe)
{
	struct ipath_ibdev *dev;

	qp->s_len = FUNC3(&qp->s_sge, wqe, qp->s_psn,
				FUNC0(qp->path_mtu));
	dev = FUNC6(qp->ibqp.device);
	FUNC4(&dev->pending_lock);
	if (FUNC2(&qp->timerwait))
		FUNC1(&qp->timerwait,
			      &dev->pending[dev->pending_index]);
	FUNC5(&dev->pending_lock);
}