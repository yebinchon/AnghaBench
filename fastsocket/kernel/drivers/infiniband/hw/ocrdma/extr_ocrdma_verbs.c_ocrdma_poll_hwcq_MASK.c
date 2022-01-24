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
typedef  int u16 ;
struct ocrdma_qp {int dummy; } ;
struct ocrdma_dev {struct ocrdma_qp** qp_tbl; } ;
struct TYPE_2__ {scalar_t__ qpn; } ;
struct ocrdma_cqe {TYPE_1__ cmn; } ;
struct ocrdma_cq {int getp; int max_hw_cqe; int /*<<< orphan*/  solicited; int /*<<< orphan*/  armed; int /*<<< orphan*/  id; struct ocrdma_cqe* va; struct ocrdma_dev* dev; } ;
struct ib_wc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OCRDMA_CQE_QPN_MASK ; 
 scalar_t__ FUNC1 (struct ocrdma_cqe*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_cq*,struct ocrdma_cqe*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_cq*,struct ocrdma_cqe*,int) ; 
 int FUNC5 (struct ocrdma_qp*,struct ocrdma_cqe*,struct ib_wc*,int*,int*) ; 
 int FUNC6 (struct ocrdma_qp*,struct ocrdma_cqe*,struct ib_wc*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocrdma_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct ocrdma_cq *cq, int num_entries,
			    struct ib_wc *ibwc)
{
	u16 qpn = 0;
	int i = 0;
	bool expand = false;
	int polled_hw_cqes = 0;
	struct ocrdma_qp *qp = NULL;
	struct ocrdma_dev *dev = cq->dev;
	struct ocrdma_cqe *cqe;
	u16 cur_getp; bool polled = false; bool stop = false;

	cur_getp = cq->getp;
	while (num_entries) {
		cqe = cq->va + cur_getp;
		/* check whether valid cqe or not */
		if (!FUNC2(cq, cqe))
			break;
		qpn = (FUNC3(cqe->cmn.qpn) & OCRDMA_CQE_QPN_MASK);
		/* ignore discarded cqe */
		if (qpn == 0)
			goto skip_cqe;
		qp = dev->qp_tbl[qpn];
		FUNC0(qp == NULL);

		if (FUNC1(cqe)) {
			expand = FUNC6(qp, cqe, ibwc, &polled,
						  &stop);
		} else {
			expand = FUNC5(qp, cqe, ibwc, &polled,
						  &stop);
		}
		if (expand)
			goto expand_cqe;
		if (stop)
			goto stop_cqe;
		/* clear qpn to avoid duplicate processing by discard_cqe() */
		cqe->cmn.qpn = 0;
skip_cqe:
		polled_hw_cqes += 1;
		cur_getp = (cur_getp + 1) % cq->max_hw_cqe;
		FUNC4(cq, cqe, cur_getp);
expand_cqe:
		if (polled) {
			num_entries -= 1;
			i += 1;
			ibwc = ibwc + 1;
			polled = false;
		}
	}
stop_cqe:
	cq->getp = cur_getp;
	if (polled_hw_cqes || expand || stop) {
		FUNC7(dev, cq->id, cq->armed, cq->solicited,
				  polled_hw_cqes);
	}
	return i;
}