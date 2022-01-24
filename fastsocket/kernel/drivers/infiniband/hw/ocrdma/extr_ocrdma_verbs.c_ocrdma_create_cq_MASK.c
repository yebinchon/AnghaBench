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
typedef  int /*<<< orphan*/  ureq ;
struct ocrdma_dev {struct ocrdma_cq** cq_tbl; } ;
struct ocrdma_create_cq_ureq {scalar_t__ dpp_cq; } ;
struct ib_cq {int dummy; } ;
struct ocrdma_cq {int arm_needed; size_t id; struct ib_cq ibcq; int /*<<< orphan*/  phase; struct ocrdma_dev* dev; int /*<<< orphan*/  rq_head; int /*<<< orphan*/  sq_head; int /*<<< orphan*/  comp_handler_lock; int /*<<< orphan*/  cq_lock; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 struct ib_cq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCRDMA_CQE_VALID ; 
 struct ocrdma_dev* FUNC2 (struct ib_device*) ; 
 scalar_t__ FUNC3 (struct ocrdma_create_cq_ureq*,struct ib_udata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_cq*) ; 
 struct ocrdma_cq* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ocrdma_cq*,struct ib_udata*,struct ib_ucontext*) ; 
 int FUNC7 (struct ocrdma_dev*,struct ocrdma_cq*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ocrdma_dev*,struct ocrdma_cq*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct ib_cq *FUNC10(struct ib_device *ibdev, int entries, int vector,
			       struct ib_ucontext *ib_ctx,
			       struct ib_udata *udata)
{
	struct ocrdma_cq *cq;
	struct ocrdma_dev *dev = FUNC2(ibdev);
	int status;
	struct ocrdma_create_cq_ureq ureq;

	if (udata) {
		if (FUNC3(&ureq, udata, sizeof(ureq)))
			return FUNC0(-EFAULT);
	} else
		ureq.dpp_cq = 0;
	cq = FUNC5(sizeof(*cq), GFP_KERNEL);
	if (!cq)
		return FUNC0(-ENOMEM);

	FUNC9(&cq->cq_lock);
	FUNC9(&cq->comp_handler_lock);
	FUNC1(&cq->sq_head);
	FUNC1(&cq->rq_head);
	cq->dev = dev;

	status = FUNC7(dev, cq, entries, ureq.dpp_cq);
	if (status) {
		FUNC4(cq);
		return FUNC0(status);
	}
	if (ib_ctx) {
		status = FUNC6(cq, udata, ib_ctx);
		if (status)
			goto ctx_err;
	}
	cq->phase = OCRDMA_CQE_VALID;
	cq->arm_needed = true;
	dev->cq_tbl[cq->id] = cq;

	return &cq->ibcq;

ctx_err:
	FUNC8(dev, cq);
	FUNC4(cq);
	return FUNC0(status);
}