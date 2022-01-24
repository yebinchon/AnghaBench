#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int len; int /*<<< orphan*/  pa; struct ocrdma_alloc_ucontext_resp* va; } ;
struct ib_ucontext {int dummy; } ;
struct ocrdma_ucontext {TYPE_3__ ah_tbl; struct ib_ucontext ibucontext; int /*<<< orphan*/  mm_list_lock; int /*<<< orphan*/  mm_head; struct ocrdma_dev* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  wqe_size; int /*<<< orphan*/  rqe_size; int /*<<< orphan*/  max_inline_data; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct ocrdma_dev {TYPE_2__ attr; int /*<<< orphan*/  id; TYPE_1__ nic_info; } ;
struct ocrdma_alloc_ucontext_resp {int ah_tbl_len; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  dpp_wqe_size; int /*<<< orphan*/  rqe_size; int /*<<< orphan*/  wqe_size; int /*<<< orphan*/  max_inline_data; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  ah_tbl_page; } ;
struct ib_udata {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 struct ib_ucontext* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct ocrdma_alloc_ucontext_resp* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,struct ocrdma_alloc_ucontext_resp*,int /*<<< orphan*/ ) ; 
 struct ocrdma_dev* FUNC4 (struct ib_device*) ; 
 int FUNC5 (struct ib_udata*,struct ocrdma_alloc_ucontext_resp*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocrdma_ucontext*) ; 
 struct ocrdma_ucontext* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocrdma_alloc_ucontext_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ocrdma_ucontext*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocrdma_ucontext*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int,int /*<<< orphan*/ ) ; 

struct ib_ucontext *FUNC14(struct ib_device *ibdev,
					  struct ib_udata *udata)
{
	int status;
	struct ocrdma_ucontext *ctx;
	struct ocrdma_alloc_ucontext_resp resp;
	struct ocrdma_dev *dev = FUNC4(ibdev);
	struct pci_dev *pdev = dev->nic_info.pdev;
	u32 map_len = FUNC13(sizeof(u32) * 2048, PAGE_SIZE);

	if (!udata)
		return FUNC0(-EFAULT);
	ctx = FUNC7(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return FUNC0(-ENOMEM);
	ctx->dev = dev;
	FUNC1(&ctx->mm_head);
	FUNC10(&ctx->mm_list_lock);

	ctx->ah_tbl.va = FUNC2(&pdev->dev, map_len,
					    &ctx->ah_tbl.pa, GFP_KERNEL);
	if (!ctx->ah_tbl.va) {
		FUNC6(ctx);
		return FUNC0(-ENOMEM);
	}
	FUNC9(ctx->ah_tbl.va, 0, map_len);
	ctx->ah_tbl.len = map_len;

	FUNC9(&resp, 0, sizeof(resp));
	resp.ah_tbl_len = ctx->ah_tbl.len;
	resp.ah_tbl_page = ctx->ah_tbl.pa;

	status = FUNC11(ctx, resp.ah_tbl_page, resp.ah_tbl_len);
	if (status)
		goto map_err;
	resp.dev_id = dev->id;
	resp.max_inline_data = dev->attr.max_inline_data;
	resp.wqe_size = dev->attr.wqe_size;
	resp.rqe_size = dev->attr.rqe_size;
	resp.dpp_wqe_size = dev->attr.wqe_size;

	FUNC8(resp.fw_ver, dev->attr.fw_ver, sizeof(resp.fw_ver));
	status = FUNC5(udata, &resp, sizeof(resp));
	if (status)
		goto cpy_err;
	return &ctx->ibucontext;

cpy_err:
	FUNC12(ctx, ctx->ah_tbl.pa, ctx->ah_tbl.len);
map_err:
	FUNC3(&pdev->dev, ctx->ah_tbl.len, ctx->ah_tbl.va,
			  ctx->ah_tbl.pa);
	FUNC6(ctx);
	return FUNC0(status);
}