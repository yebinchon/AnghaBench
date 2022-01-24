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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ib_srq {int dummy; } ;
struct TYPE_7__ {int max_cnt; } ;
struct ocrdma_srq {int bit_fields_len; struct ocrdma_srq* idx_bit_fields; struct ocrdma_srq* rqe_wr_id_tbl; struct ib_srq ibsrq; TYPE_3__ rq; scalar_t__ db; struct ocrdma_pd* pd; struct ocrdma_dev* dev; int /*<<< orphan*/  q_lock; } ;
struct ocrdma_pd {int id; struct ocrdma_dev* dev; } ;
struct TYPE_6__ {int db_page_size; scalar_t__ db; } ;
struct TYPE_5__ {scalar_t__ max_recv_sge; scalar_t__ max_rqe; } ;
struct ocrdma_dev {TYPE_2__ nic_info; TYPE_1__ attr; } ;
struct ib_udata {int dummy; } ;
struct TYPE_8__ {scalar_t__ max_sge; scalar_t__ max_wr; scalar_t__ srq_limit; } ;
struct ib_srq_init_attr {TYPE_4__ attr; } ;
struct ib_pd {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_srq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ocrdma_pd* FUNC1 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_srq*) ; 
 struct ocrdma_srq* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_srq*,int,int) ; 
 int FUNC6 (struct ocrdma_srq*,struct ib_udata*) ; 
 int FUNC7 (struct ocrdma_srq*,struct ib_srq_init_attr*,struct ocrdma_pd*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocrdma_dev*,struct ocrdma_srq*) ; 
 int FUNC9 (struct ocrdma_srq*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct ib_srq *FUNC11(struct ib_pd *ibpd,
				 struct ib_srq_init_attr *init_attr,
				 struct ib_udata *udata)
{
	int status = -ENOMEM;
	struct ocrdma_pd *pd = FUNC1(ibpd);
	struct ocrdma_dev *dev = pd->dev;
	struct ocrdma_srq *srq;

	if (init_attr->attr.max_sge > dev->attr.max_recv_sge)
		return FUNC0(-EINVAL);
	if (init_attr->attr.max_wr > dev->attr.max_rqe)
		return FUNC0(-EINVAL);

	srq = FUNC4(sizeof(*srq), GFP_KERNEL);
	if (!srq)
		return FUNC0(status);

	FUNC10(&srq->q_lock);
	srq->dev = dev;
	srq->pd = pd;
	srq->db = dev->nic_info.db + (pd->id * dev->nic_info.db_page_size);
	status = FUNC7(srq, init_attr, pd);
	if (status)
		goto err;

	if (udata == NULL) {
		srq->rqe_wr_id_tbl = FUNC4(sizeof(u64) * srq->rq.max_cnt,
			    GFP_KERNEL);
		if (srq->rqe_wr_id_tbl == NULL)
			goto arm_err;

		srq->bit_fields_len = (srq->rq.max_cnt / 32) +
		    (srq->rq.max_cnt % 32 ? 1 : 0);
		srq->idx_bit_fields =
		    FUNC3(srq->bit_fields_len * sizeof(u32), GFP_KERNEL);
		if (srq->idx_bit_fields == NULL)
			goto arm_err;
		FUNC5(srq->idx_bit_fields, 0xff,
		       srq->bit_fields_len * sizeof(u32));
	}

	if (init_attr->attr.srq_limit) {
		status = FUNC9(srq, &init_attr->attr);
		if (status)
			goto arm_err;
	}

	if (udata) {
		status = FUNC6(srq, udata);
		if (status)
			goto arm_err;
	}

	return &srq->ibsrq;

arm_err:
	FUNC8(dev, srq);
err:
	FUNC2(srq->rqe_wr_id_tbl);
	FUNC2(srq->idx_bit_fields);
	FUNC2(srq);
	return FUNC0(status);
}