#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct mthca_create_cq {int /*<<< orphan*/  set_db_index; int /*<<< orphan*/  arm_db_index; int /*<<< orphan*/  pdn; int /*<<< orphan*/  lkey; int /*<<< orphan*/  arm_db_page; int /*<<< orphan*/  set_db_page; } ;
struct ib_cq {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  lkey; } ;
struct TYPE_15__ {TYPE_2__ ibmr; } ;
struct TYPE_16__ {TYPE_3__ mr; } ;
struct mthca_cq {struct ib_cq ibcq; int /*<<< orphan*/ * resize_buf; int /*<<< orphan*/  cqn; int /*<<< orphan*/  arm_db_index; int /*<<< orphan*/  set_ci_db_index; TYPE_4__ buf; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_17__ {int /*<<< orphan*/  pd_num; } ;
struct TYPE_13__ {int max_cqes; } ;
struct TYPE_19__ {TYPE_5__ driver_pd; TYPE_1__ limits; } ;
struct TYPE_18__ {int /*<<< orphan*/  db_tab; int /*<<< orphan*/  uar; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_cq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mthca_create_cq*,struct ib_udata*,int) ; 
 scalar_t__ FUNC2 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_cq*) ; 
 struct mthca_cq* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,struct mthca_cq*) ; 
 int FUNC6 (TYPE_7__*,int,TYPE_6__*,int /*<<< orphan*/ ,struct mthca_cq*) ; 
 int FUNC7 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC9 (struct ib_device*) ; 
 TYPE_6__* FUNC10 (struct ib_ucontext*) ; 

__attribute__((used)) static struct ib_cq *FUNC11(struct ib_device *ibdev, int entries,
				     int comp_vector,
				     struct ib_ucontext *context,
				     struct ib_udata *udata)
{
	struct mthca_create_cq ucmd;
	struct mthca_cq *cq;
	int nent;
	int err;

	if (entries < 1 || entries > FUNC9(ibdev)->limits.max_cqes)
		return FUNC0(-EINVAL);

	if (context) {
		if (FUNC1(&ucmd, udata, sizeof ucmd))
			return FUNC0(-EFAULT);

		err = FUNC7(FUNC9(ibdev), &FUNC10(context)->uar,
					FUNC10(context)->db_tab,
					ucmd.set_db_index, ucmd.set_db_page);
		if (err)
			return FUNC0(err);

		err = FUNC7(FUNC9(ibdev), &FUNC10(context)->uar,
					FUNC10(context)->db_tab,
					ucmd.arm_db_index, ucmd.arm_db_page);
		if (err)
			goto err_unmap_set;
	}

	cq = FUNC4(sizeof *cq, GFP_KERNEL);
	if (!cq) {
		err = -ENOMEM;
		goto err_unmap_arm;
	}

	if (context) {
		cq->buf.mr.ibmr.lkey = ucmd.lkey;
		cq->set_ci_db_index  = ucmd.set_db_index;
		cq->arm_db_index     = ucmd.arm_db_index;
	}

	for (nent = 1; nent <= entries; nent <<= 1)
		; /* nothing */

	err = FUNC6(FUNC9(ibdev), nent,
			    context ? FUNC10(context) : NULL,
			    context ? ucmd.pdn : FUNC9(ibdev)->driver_pd.pd_num,
			    cq);
	if (err)
		goto err_free;

	if (context && FUNC2(udata, &cq->cqn, sizeof (__u32))) {
		FUNC5(FUNC9(ibdev), cq);
		goto err_free;
	}

	cq->resize_buf = NULL;

	return &cq->ibcq;

err_free:
	FUNC3(cq);

err_unmap_arm:
	if (context)
		FUNC8(FUNC9(ibdev), &FUNC10(context)->uar,
				    FUNC10(context)->db_tab, ucmd.arm_db_index);

err_unmap_set:
	if (context)
		FUNC8(FUNC9(ibdev), &FUNC10(context)->uar,
				    FUNC10(context)->db_tab, ucmd.set_db_index);

	return FUNC0(err);
}