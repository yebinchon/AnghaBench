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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  len; scalar_t__ pa; } ;
struct ocrdma_srq {struct ocrdma_srq* rqe_wr_id_tbl; struct ocrdma_srq* idx_bit_fields; TYPE_1__ rq; TYPE_2__* pd; struct ocrdma_dev* dev; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_srq {int dummy; } ;
struct TYPE_4__ {scalar_t__ uctx; } ;

/* Variables and functions */
 struct ocrdma_srq* FUNC0 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_srq*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ocrdma_dev*,struct ocrdma_srq*) ; 

int FUNC4(struct ib_srq *ibsrq)
{
	int status;
	struct ocrdma_srq *srq;
	struct ocrdma_dev *dev;

	srq = FUNC0(ibsrq);
	dev = srq->dev;

	status = FUNC3(dev, srq);

	if (srq->pd->uctx)
		FUNC2(srq->pd->uctx, (u64) srq->rq.pa, srq->rq.len);

	FUNC1(srq->idx_bit_fields);
	FUNC1(srq->rqe_wr_id_tbl);
	FUNC1(srq);
	return status;
}