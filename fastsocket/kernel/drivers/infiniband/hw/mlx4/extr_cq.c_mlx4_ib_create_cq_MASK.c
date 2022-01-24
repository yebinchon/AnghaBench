#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
struct mlx4_uar {int dummy; } ;
struct mlx4_ib_dev {int* eq_table; TYPE_3__* dev; struct mlx4_uar priv_uar; } ;
struct mlx4_ib_create_cq {int /*<<< orphan*/  db_addr; int /*<<< orphan*/  buf_addr; } ;
struct TYPE_22__ {int /*<<< orphan*/  dma; scalar_t__* db; } ;
struct ib_cq {int cqe; } ;
struct TYPE_21__ {int /*<<< orphan*/  mtt; } ;
struct TYPE_17__ {int /*<<< orphan*/  cqn; int /*<<< orphan*/  event; int /*<<< orphan*/  comp; scalar_t__* arm_db; scalar_t__* set_ci_db; } ;
struct mlx4_ib_cq {TYPE_7__ db; struct ib_cq ibcq; TYPE_4__ buf; int /*<<< orphan*/  umem; TYPE_16__ mcq; int /*<<< orphan*/ * resize_umem; int /*<<< orphan*/ * resize_buf; int /*<<< orphan*/  lock; int /*<<< orphan*/  resize_mutex; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int num_comp_vectors; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_18__ {int max_cqes; } ;
struct TYPE_20__ {TYPE_1__ caps; } ;
struct TYPE_19__ {struct mlx4_uar uar; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_cq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mlx4_ib_create_cq*,struct ib_udata*,int) ; 
 scalar_t__ FUNC2 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_ib_cq*) ; 
 struct mlx4_ib_cq* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ *,struct mlx4_uar*,int /*<<< orphan*/ ,TYPE_16__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_7__*) ; 
 int FUNC9 (struct mlx4_ib_dev*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  mlx4_ib_cq_comp ; 
 int /*<<< orphan*/  mlx4_ib_cq_event ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_ib_dev*,TYPE_4__*,int) ; 
 int FUNC13 (struct mlx4_ib_dev*,struct ib_ucontext*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC18 (struct ib_device*) ; 
 TYPE_2__* FUNC19 (struct ib_ucontext*) ; 

struct ib_cq *FUNC20(struct ib_device *ibdev, int entries, int vector,
				struct ib_ucontext *context,
				struct ib_udata *udata)
{
	struct mlx4_ib_dev *dev = FUNC18(ibdev);
	struct mlx4_ib_cq *cq;
	struct mlx4_uar *uar;
	int err;

	if (entries < 1 || entries > dev->dev->caps.max_cqes)
		return FUNC0(-EINVAL);

	cq = FUNC5(sizeof *cq, GFP_KERNEL);
	if (!cq)
		return FUNC0(-ENOMEM);

	entries      = FUNC16(entries + 1);
	cq->ibcq.cqe = entries - 1;
	FUNC15(&cq->resize_mutex);
	FUNC17(&cq->lock);
	cq->resize_buf = NULL;
	cq->resize_umem = NULL;

	if (context) {
		struct mlx4_ib_create_cq ucmd;

		if (FUNC1(&ucmd, udata, sizeof ucmd)) {
			err = -EFAULT;
			goto err_cq;
		}

		err = FUNC13(dev, context, &cq->buf, &cq->umem,
					  ucmd.buf_addr, entries);
		if (err)
			goto err_cq;

		err = FUNC10(FUNC19(context), ucmd.db_addr,
					  &cq->db);
		if (err)
			goto err_mtt;

		uar = &FUNC19(context)->uar;
	} else {
		err = FUNC7(dev->dev, &cq->db, 1);
		if (err)
			goto err_cq;

		cq->mcq.set_ci_db  = cq->db.db;
		cq->mcq.arm_db     = cq->db.db + 1;
		*cq->mcq.set_ci_db = 0;
		*cq->mcq.arm_db    = 0;

		err = FUNC9(dev, &cq->buf, entries);
		if (err)
			goto err_db;

		uar = &dev->priv_uar;
	}

	if (dev->eq_table)
		vector = dev->eq_table[vector % ibdev->num_comp_vectors];

	err = FUNC6(dev->dev, entries, &cq->buf.mtt, uar,
			    cq->db.dma, &cq->mcq, vector, 0, 0);
	if (err)
		goto err_dbmap;

	cq->mcq.comp  = mlx4_ib_cq_comp;
	cq->mcq.event = mlx4_ib_cq_event;

	if (context)
		if (FUNC2(udata, &cq->mcq.cqn, sizeof (__u32))) {
			err = -EFAULT;
			goto err_dbmap;
		}

	return &cq->ibcq;

err_dbmap:
	if (context)
		FUNC11(FUNC19(context), &cq->db);

err_mtt:
	FUNC14(dev->dev, &cq->buf.mtt);

	if (context)
		FUNC3(cq->umem);
	else
		FUNC12(dev, &cq->buf, cq->ibcq.cqe);

err_db:
	if (!context)
		FUNC8(dev->dev, &cq->db);

err_cq:
	FUNC4(cq);

	return FUNC0(err);
}