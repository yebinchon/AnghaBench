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
struct t3_wq {int /*<<< orphan*/  rq_wptr; int /*<<< orphan*/  rq_rptr; } ;
struct t3_cqe {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct t3_cqe) ; 
 scalar_t__ FUNC1 (struct t3_cqe) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct t3_cqe) ; 
 scalar_t__ FUNC4 (struct t3_cqe) ; 
 scalar_t__ T3_RDMA_WRITE ; 
 scalar_t__ T3_READ_RESP ; 
 scalar_t__ T3_TERMINATE ; 

__attribute__((used)) static int FUNC5(struct t3_cqe *cqe, struct t3_wq *wq)
{
	if (FUNC0(*cqe) == T3_TERMINATE)
		return 0;

	if ((FUNC0(*cqe) == T3_RDMA_WRITE) && FUNC3(*cqe))
		return 0;

	if ((FUNC0(*cqe) == T3_READ_RESP) && FUNC4(*cqe))
		return 0;

	if (FUNC1(*cqe) && FUNC3(*cqe) &&
	    FUNC2(wq->rq_rptr, wq->rq_wptr))
		return 0;

	return 1;
}