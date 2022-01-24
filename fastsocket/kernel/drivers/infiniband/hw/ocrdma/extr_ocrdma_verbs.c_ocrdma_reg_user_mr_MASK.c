#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocrdma_pd {int /*<<< orphan*/  id; struct ocrdma_dev* dev; } ;
struct TYPE_9__ {int remote_wr; int remote_rd; int local_wr; int local_rd; int remote_atomic; int /*<<< orphan*/  lkey; void* len; void* va; int /*<<< orphan*/  fbo; int /*<<< orphan*/  pbe_size; struct ocrdma_dev* dev; } ;
struct ib_mr {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct ocrdma_mr {TYPE_2__ hwmr; struct ib_mr ibmr; struct ocrdma_pd* pd; TYPE_5__* umem; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct TYPE_10__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  page_size; } ;
struct TYPE_8__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_dev*,struct ocrdma_mr*,int /*<<< orphan*/ ) ; 
 struct ocrdma_pd* FUNC3 (struct ib_pd*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocrdma_mr*) ; 
 struct ocrdma_mr* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ocrdma_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocrdma_dev*,TYPE_2__*) ; 
 int FUNC10 (struct ocrdma_mr*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ocrdma_dev*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 

struct ib_mr *FUNC12(struct ib_pd *ibpd, u64 start, u64 len,
				 u64 usr_addr, int acc, struct ib_udata *udata)
{
	int status = -ENOMEM;
	struct ocrdma_dev *dev;
	struct ocrdma_mr *mr;
	struct ocrdma_pd *pd;
	u32 num_pbes;

	pd = FUNC3(ibpd);
	dev = pd->dev;

	if (acc & IB_ACCESS_REMOTE_WRITE && !(acc & IB_ACCESS_LOCAL_WRITE))
		return FUNC0(-EINVAL);

	mr = FUNC7(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(status);
	mr->hwmr.dev = dev;
	mr->umem = FUNC4(ibpd->uobject->context, start, len, acc, 0);
	if (FUNC1(mr->umem)) {
		status = -EFAULT;
		goto umem_err;
	}
	num_pbes = FUNC5(mr->umem);
	status = FUNC10(mr, num_pbes);
	if (status)
		goto umem_err;

	mr->hwmr.pbe_size = mr->umem->page_size;
	mr->hwmr.fbo = mr->umem->offset;
	mr->hwmr.va = usr_addr;
	mr->hwmr.len = len;
	mr->hwmr.remote_wr = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
	mr->hwmr.remote_rd = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
	mr->hwmr.local_wr = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
	mr->hwmr.local_rd = 1;
	mr->hwmr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
	status = FUNC8(dev, &mr->hwmr);
	if (status)
		goto umem_err;
	FUNC2(dev, mr, num_pbes);
	status = FUNC11(dev, &mr->hwmr, pd->id, acc);
	if (status)
		goto mbx_err;
	mr->pd = pd;
	mr->ibmr.lkey = mr->hwmr.lkey;
	if (mr->hwmr.remote_wr || mr->hwmr.remote_rd)
		mr->ibmr.rkey = mr->hwmr.lkey;

	return &mr->ibmr;

mbx_err:
	FUNC9(dev, &mr->hwmr);
umem_err:
	FUNC6(mr);
	return FUNC0(status);
}