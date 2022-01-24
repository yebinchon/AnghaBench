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
struct ehca_qp {unsigned int real_qp_num; int /*<<< orphan*/  list_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct ehca_cq {int /*<<< orphan*/  cq_number; TYPE_1__ ib_cq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/ * qp_hashtab; } ;

/* Variables and functions */
 int QP_HASHTAB_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct ehca_cq *cq, struct ehca_qp *qp)
{
	unsigned int qp_num = qp->real_qp_num;
	unsigned int key = qp_num & (QP_HASHTAB_LEN-1);
	unsigned long flags;

	FUNC2(&cq->spinlock, flags);
	FUNC1(&qp->list_entries, &cq->qp_hashtab[key]);
	FUNC3(&cq->spinlock, flags);

	FUNC0(cq->ib_cq.device, "cq_num=%x real_qp_num=%x",
		 cq->cq_number, qp_num);

	return 0;
}