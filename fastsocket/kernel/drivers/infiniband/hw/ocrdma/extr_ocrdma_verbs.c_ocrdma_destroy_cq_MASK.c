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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  db_page_size; int /*<<< orphan*/  unmapped_db; } ;
struct ocrdma_dev {int /*<<< orphan*/ ** cq_tbl; TYPE_1__ nic_info; } ;
struct ocrdma_cq {size_t id; scalar_t__ ucontext; int /*<<< orphan*/  len; scalar_t__ pa; struct ocrdma_dev* dev; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 struct ocrdma_cq* FUNC0 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_cq*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ocrdma_dev*,struct ocrdma_cq*) ; 

int FUNC4(struct ib_cq *ibcq)
{
	int status;
	struct ocrdma_cq *cq = FUNC0(ibcq);
	struct ocrdma_dev *dev = cq->dev;

	status = FUNC3(dev, cq);

	if (cq->ucontext) {
		FUNC2(cq->ucontext, (u64) cq->pa, cq->len);
		FUNC2(cq->ucontext, dev->nic_info.unmapped_db,
				dev->nic_info.db_page_size);
	}
	dev->cq_tbl[cq->id] = NULL;

	FUNC1(cq);
	return status;
}