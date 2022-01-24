#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_49__   TYPE_9__ ;
typedef  struct TYPE_48__   TYPE_8__ ;
typedef  struct TYPE_47__   TYPE_7__ ;
typedef  struct TYPE_46__   TYPE_6__ ;
typedef  struct TYPE_45__   TYPE_5__ ;
typedef  struct TYPE_44__   TYPE_4__ ;
typedef  struct TYPE_43__   TYPE_3__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_24__ ;
typedef  struct TYPE_40__   TYPE_1__ ;
typedef  struct TYPE_39__   TYPE_17__ ;
typedef  struct TYPE_38__   TYPE_16__ ;
typedef  struct TYPE_37__   TYPE_13__ ;
typedef  struct TYPE_36__   TYPE_12__ ;
typedef  struct TYPE_35__   TYPE_11__ ;
typedef  struct TYPE_34__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_wqe_srq_next_seg {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx4_wqe_data_seg {int /*<<< orphan*/  lkey; } ;
struct TYPE_39__ {int /*<<< orphan*/  dma; scalar_t__* db; } ;
struct TYPE_41__ {int /*<<< orphan*/  page_shift; int /*<<< orphan*/  npages; } ;
struct TYPE_44__ {int /*<<< orphan*/  srq_num; } ;
struct TYPE_45__ {TYPE_4__ xrc; } ;
struct ib_srq {TYPE_5__ ext; } ;
struct TYPE_37__ {int max; scalar_t__ max_gs; int /*<<< orphan*/  srqn; int /*<<< orphan*/  event; int /*<<< orphan*/  wqe_shift; } ;
struct mlx4_ib_srq {int tail; TYPE_17__ db; TYPE_24__ buf; TYPE_16__* umem; int /*<<< orphan*/  mtt; struct mlx4_ib_srq* wrid; struct ib_srq ibsrq; TYPE_13__ msrq; scalar_t__ wqe_ctr; scalar_t__ head; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; } ;
struct mlx4_ib_dev {TYPE_12__* dev; } ;
struct mlx4_ib_create_srq {int /*<<< orphan*/  db_addr; int /*<<< orphan*/  buf_addr; } ;
struct ib_udata {int dummy; } ;
struct TYPE_47__ {int max_wr; scalar_t__ max_sge; } ;
struct TYPE_42__ {int /*<<< orphan*/  xrcd; int /*<<< orphan*/  cq; } ;
struct TYPE_43__ {TYPE_2__ xrc; } ;
struct ib_srq_init_attr {scalar_t__ srq_type; TYPE_7__ attr; TYPE_3__ ext; } ;
struct ib_pd {TYPE_8__* uobject; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_49__ {int /*<<< orphan*/  xrcdn; } ;
struct TYPE_48__ {int /*<<< orphan*/  context; } ;
struct TYPE_46__ {int max_srq_wqes; scalar_t__ max_srq_sge; scalar_t__ reserved_xrcds; } ;
struct TYPE_40__ {int /*<<< orphan*/  cqn; } ;
struct TYPE_38__ {int page_size; } ;
struct TYPE_36__ {TYPE_6__ caps; } ;
struct TYPE_35__ {TYPE_1__ mcq; } ;
struct TYPE_34__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_srq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_SRQT_XRC ; 
 scalar_t__ FUNC1 (TYPE_16__*) ; 
 int /*<<< orphan*/  MLX4_INVALID_LKEY ; 
 int PAGE_SIZE ; 
 int FUNC2 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mlx4_wqe_srq_next_seg* FUNC5 (struct mlx4_ib_srq*,int) ; 
 scalar_t__ FUNC6 (struct mlx4_ib_create_srq*,struct ib_udata*,int) ; 
 scalar_t__ FUNC7 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 TYPE_16__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_ib_srq*) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (unsigned long,int) ; 
 scalar_t__ FUNC15 (TYPE_12__*,int,int,TYPE_24__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_12__*,int,TYPE_24__*) ; 
 int FUNC17 (TYPE_12__*,int /*<<< orphan*/ *,TYPE_24__*) ; 
 int FUNC18 (TYPE_12__*,TYPE_17__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_12__*,TYPE_17__*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_17__*) ; 
 int /*<<< orphan*/  mlx4_ib_srq_event ; 
 int FUNC22 (struct mlx4_ib_dev*,int /*<<< orphan*/ *,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_12__*,int /*<<< orphan*/ *) ; 
 int FUNC24 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC25 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 TYPE_11__* FUNC29 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_dev* FUNC30 (int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC31 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC33 (int /*<<< orphan*/ ) ; 

struct ib_srq *FUNC34(struct ib_pd *pd,
				  struct ib_srq_init_attr *init_attr,
				  struct ib_udata *udata)
{
	struct mlx4_ib_dev *dev = FUNC30(pd->device);
	struct mlx4_ib_srq *srq;
	struct mlx4_wqe_srq_next_seg *next;
	struct mlx4_wqe_data_seg *scatter;
	u32 cqn;
	u16 xrcdn;
	int desc_size;
	int buf_size;
	int err;
	int i;

	/* Sanity check SRQ size before proceeding */
	if (init_attr->attr.max_wr  >= dev->dev->caps.max_srq_wqes ||
	    init_attr->attr.max_sge >  dev->dev->caps.max_srq_sge)
		return FUNC0(-EINVAL);

	srq = FUNC13(sizeof *srq, GFP_KERNEL);
	if (!srq)
		return FUNC0(-ENOMEM);

	FUNC26(&srq->mutex);
	FUNC28(&srq->lock);
	srq->msrq.max    = FUNC27(init_attr->attr.max_wr + 1);
	srq->msrq.max_gs = init_attr->attr.max_sge;

	desc_size = FUNC14(32UL,
			FUNC27(sizeof (struct mlx4_wqe_srq_next_seg) +
					   srq->msrq.max_gs *
					   sizeof (struct mlx4_wqe_data_seg)));
	srq->msrq.wqe_shift = FUNC11(desc_size);

	buf_size = srq->msrq.max * desc_size;

	if (pd->uobject) {
		struct mlx4_ib_create_srq ucmd;

		if (FUNC6(&ucmd, udata, sizeof ucmd)) {
			err = -EFAULT;
			goto err_srq;
		}

		srq->umem = FUNC8(pd->uobject->context, ucmd.buf_addr,
					buf_size, 0, 0);
		if (FUNC1(srq->umem)) {
			err = FUNC2(srq->umem);
			goto err_srq;
		}

		err = FUNC24(dev->dev, FUNC9(srq->umem),
				    FUNC11(srq->umem->page_size), &srq->mtt);
		if (err)
			goto err_buf;

		err = FUNC22(dev, &srq->mtt, srq->umem);
		if (err)
			goto err_mtt;

		err = FUNC20(FUNC32(pd->uobject->context),
					  ucmd.db_addr, &srq->db);
		if (err)
			goto err_mtt;
	} else {
		err = FUNC18(dev->dev, &srq->db, 0);
		if (err)
			goto err_srq;

		*srq->db.db = 0;

		if (FUNC15(dev->dev, buf_size, PAGE_SIZE * 2, &srq->buf)) {
			err = -ENOMEM;
			goto err_db;
		}

		srq->head    = 0;
		srq->tail    = srq->msrq.max - 1;
		srq->wqe_ctr = 0;

		for (i = 0; i < srq->msrq.max; ++i) {
			next = FUNC5(srq, i);
			next->next_wqe_index =
				FUNC3((i + 1) & (srq->msrq.max - 1));

			for (scatter = (void *) (next + 1);
			     (void *) scatter < (void *) next + desc_size;
			     ++scatter)
				scatter->lkey = FUNC4(MLX4_INVALID_LKEY);
		}

		err = FUNC24(dev->dev, srq->buf.npages, srq->buf.page_shift,
				    &srq->mtt);
		if (err)
			goto err_buf;

		err = FUNC17(dev->dev, &srq->mtt, &srq->buf);
		if (err)
			goto err_mtt;

		srq->wrid = FUNC13(srq->msrq.max * sizeof (u64), GFP_KERNEL);
		if (!srq->wrid) {
			err = -ENOMEM;
			goto err_mtt;
		}
	}

	cqn = (init_attr->srq_type == IB_SRQT_XRC) ?
		FUNC29(init_attr->ext.xrc.cq)->mcq.cqn : 0;
	xrcdn = (init_attr->srq_type == IB_SRQT_XRC) ?
		FUNC33(init_attr->ext.xrc.xrcd)->xrcdn :
		(u16) dev->dev->caps.reserved_xrcds;
	err = FUNC25(dev->dev, FUNC31(pd)->pdn, cqn, xrcdn, &srq->mtt,
			     srq->db.dma, &srq->msrq);
	if (err)
		goto err_wrid;

	srq->msrq.event = mlx4_ib_srq_event;
	srq->ibsrq.ext.xrc.srq_num = srq->msrq.srqn;

	if (pd->uobject)
		if (FUNC7(udata, &srq->msrq.srqn, sizeof (__u32))) {
			err = -EFAULT;
			goto err_wrid;
		}

	init_attr->attr.max_wr = srq->msrq.max - 1;

	return &srq->ibsrq;

err_wrid:
	if (pd->uobject)
		FUNC21(FUNC32(pd->uobject->context), &srq->db);
	else
		FUNC12(srq->wrid);

err_mtt:
	FUNC23(dev->dev, &srq->mtt);

err_buf:
	if (pd->uobject)
		FUNC10(srq->umem);
	else
		FUNC16(dev->dev, buf_size, &srq->buf);

err_db:
	if (!pd->uobject)
		FUNC19(dev->dev, &srq->db);

err_srq:
	FUNC12(srq);

	return FUNC0(err);
}