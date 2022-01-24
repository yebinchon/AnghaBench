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
typedef  scalar_t__ u64 ;
struct ehca_shca {int /*<<< orphan*/  ib_device; int /*<<< orphan*/  ipz_hca_handle; } ;
struct TYPE_8__ {scalar_t__ left_to_poll; int /*<<< orphan*/  entries; int /*<<< orphan*/  tail; void* next_wqe_idx; } ;
struct TYPE_5__ {int qp_num; } ;
struct ehca_qp {scalar_t__ ext_type; TYPE_3__* recv_cq; TYPE_2__* send_cq; TYPE_4__ rq_map; TYPE_4__ sq_map; int /*<<< orphan*/  ipz_rqueue; int /*<<< orphan*/  ipz_squeue; int /*<<< orphan*/  pf; int /*<<< orphan*/  ipz_qp_handle; TYPE_1__ ib_qp; } ;
struct TYPE_7__ {int /*<<< orphan*/  spinlock; } ;
struct TYPE_6__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 scalar_t__ EQPT_SRQBASE ; 
 scalar_t__ FUNC0 (struct ehca_qp*) ; 
 scalar_t__ H_SUCCESS ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ehca_qp*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,struct ehca_qp*,int,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,void**,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct ehca_qp *my_qp, struct ehca_shca *shca)
{
	u64 h_ret;
	void *send_wqe_p, *recv_wqe_p;
	int ret;
	unsigned long flags;
	int qp_num = my_qp->ib_qp.qp_num;

	/* this hcall is not supported on base QPs */
	if (my_qp->ext_type != EQPT_SRQBASE) {
		/* get send and receive wqe pointer */
		h_ret = FUNC5(shca->ipz_hca_handle,
				my_qp->ipz_qp_handle, &my_qp->pf,
				&send_wqe_p, &recv_wqe_p, 4);
		if (h_ret != H_SUCCESS) {
			FUNC4(&shca->ib_device, "disable_and_get_wqe() "
				 "failed ehca_qp=%p qp_num=%x h_ret=%lli",
				 my_qp, qp_num, h_ret);
			return FUNC2(h_ret);
		}

		/*
		 * acquire lock to ensure that nobody is polling the cq which
		 * could mean that the qmap->tail pointer is in an
		 * inconsistent state.
		 */
		FUNC7(&my_qp->send_cq->spinlock, flags);
		ret = FUNC1((u64)send_wqe_p, &my_qp->ipz_squeue,
				&my_qp->sq_map);
		FUNC8(&my_qp->send_cq->spinlock, flags);
		if (ret)
			return ret;


		FUNC7(&my_qp->recv_cq->spinlock, flags);
		ret = FUNC1((u64)recv_wqe_p, &my_qp->ipz_rqueue,
				&my_qp->rq_map);
		FUNC8(&my_qp->recv_cq->spinlock, flags);
		if (ret)
			return ret;
	} else {
		FUNC7(&my_qp->send_cq->spinlock, flags);
		my_qp->sq_map.left_to_poll = 0;
		my_qp->sq_map.next_wqe_idx = FUNC6(my_qp->sq_map.tail,
							my_qp->sq_map.entries);
		FUNC8(&my_qp->send_cq->spinlock, flags);

		FUNC7(&my_qp->recv_cq->spinlock, flags);
		my_qp->rq_map.left_to_poll = 0;
		my_qp->rq_map.next_wqe_idx = FUNC6(my_qp->rq_map.tail,
							my_qp->rq_map.entries);
		FUNC8(&my_qp->recv_cq->spinlock, flags);
	}

	/* this assures flush cqes being generated only for pending wqes */
	if ((my_qp->sq_map.left_to_poll == 0) &&
				(my_qp->rq_map.left_to_poll == 0)) {
		FUNC7(&my_qp->send_cq->spinlock, flags);
		FUNC3(my_qp, 1);
		FUNC8(&my_qp->send_cq->spinlock, flags);

		if (FUNC0(my_qp)) {
			FUNC7(&my_qp->recv_cq->spinlock, flags);
			FUNC3(my_qp, 0);
			FUNC8(&my_qp->recv_cq->spinlock,
					flags);
		}
	}

	return 0;
}