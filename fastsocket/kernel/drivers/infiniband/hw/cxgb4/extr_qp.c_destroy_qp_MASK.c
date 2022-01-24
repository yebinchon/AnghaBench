#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  qid; int /*<<< orphan*/  sw_sq; } ;
struct TYPE_7__ {int /*<<< orphan*/  qid; int /*<<< orphan*/  sw_rq; int /*<<< orphan*/  rqt_size; int /*<<< orphan*/  rqt_hwaddr; int /*<<< orphan*/  queue; int /*<<< orphan*/  memsize; } ;
struct t4_wq {TYPE_4__ sq; TYPE_3__ rq; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct c4iw_rdev {TYPE_2__ lldi; } ;
struct c4iw_dev_ucontext {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c4iw_rdev*,int /*<<< orphan*/ ,struct c4iw_dev_ucontext*) ; 
 int /*<<< orphan*/  FUNC1 (struct c4iw_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct c4iw_rdev*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct c4iw_rdev *rdev, struct t4_wq *wq,
		      struct c4iw_dev_ucontext *uctx)
{
	/*
	 * uP clears EQ contexts when the connection exits rdma mode,
	 * so no need to post a RESET WR for these EQs.
	 */
	FUNC3(&(rdev->lldi.pdev->dev),
			  wq->rq.memsize, wq->rq.queue,
			  FUNC5(&wq->rq, mapping));
	FUNC2(rdev, &wq->sq);
	FUNC1(rdev, wq->rq.rqt_hwaddr, wq->rq.rqt_size);
	FUNC4(wq->rq.sw_rq);
	FUNC4(wq->sq.sw_sq);
	FUNC0(rdev, wq->rq.qid, uctx);
	FUNC0(rdev, wq->sq.qid, uctx);
	return 0;
}