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
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct ehca_shca {int /*<<< orphan*/  ib_device; TYPE_4__ ipz_hca_handle; } ;
struct ehca_mr_pginfo {int num_hwpages; int /*<<< orphan*/  num_kpages; int /*<<< orphan*/  hwpage_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  lkey; } ;
struct TYPE_6__ {TYPE_1__ ib_mr; } ;
struct ehca_mr {TYPE_3__ ipz_mr_handle; TYPE_2__ ib; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ H_PAGE_REGISTERED ; 
 scalar_t__ H_SUCCESS ; 
 int MAX_RPAGES ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int FUNC6 (struct ehca_mr_pginfo*,int,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_4__,struct ehca_mr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__*) ; 

int FUNC9(struct ehca_shca *shca,
		       struct ehca_mr *e_mr,
		       struct ehca_mr_pginfo *pginfo)
{
	int ret = 0;
	u64 h_ret;
	u32 rnum;
	u64 rpage;
	u32 i;
	u64 *kpage;

	if (!pginfo->num_hwpages) /* in case of fmr */
		return 0;

	kpage = FUNC2(GFP_KERNEL);
	if (!kpage) {
		FUNC4(&shca->ib_device, "kpage alloc failed");
		ret = -ENOMEM;
		goto ehca_reg_mr_rpages_exit0;
	}

	/* max MAX_RPAGES ehca mr pages per register call */
	for (i = 0; i < FUNC0(pginfo->num_hwpages, MAX_RPAGES); i++) {

		if (i == FUNC0(pginfo->num_hwpages, MAX_RPAGES) - 1) {
			rnum = pginfo->num_hwpages % MAX_RPAGES; /* last shot */
			if (rnum == 0)
				rnum = MAX_RPAGES;      /* last shot is full */
		} else
			rnum = MAX_RPAGES;

		ret = FUNC6(pginfo, rnum, kpage);
		if (ret) {
			FUNC4(&shca->ib_device, "ehca_set_pagebuf "
				 "bad rc, ret=%i rnum=%x kpage=%p",
				 ret, rnum, kpage);
			goto ehca_reg_mr_rpages_exit1;
		}

		if (rnum > 1) {
			rpage = FUNC8(kpage);
			if (!rpage) {
				FUNC4(&shca->ib_device, "kpage=%p i=%x",
					 kpage, i);
				ret = -EFAULT;
				goto ehca_reg_mr_rpages_exit1;
			}
		} else
			rpage = *kpage;

		h_ret = FUNC7(
			shca->ipz_hca_handle, e_mr,
			FUNC3(pginfo->hwpage_size),
			0, rpage, rnum);

		if (i == FUNC0(pginfo->num_hwpages, MAX_RPAGES) - 1) {
			/*
			 * check for 'registration complete'==H_SUCCESS
			 * and for 'page registered'==H_PAGE_REGISTERED
			 */
			if (h_ret != H_SUCCESS) {
				FUNC4(&shca->ib_device, "last "
					 "hipz_reg_rpage_mr failed, h_ret=%lli "
					 "e_mr=%p i=%x hca_hndl=%llx mr_hndl=%llx"
					 " lkey=%x", h_ret, e_mr, i,
					 shca->ipz_hca_handle.handle,
					 e_mr->ipz_mr_handle.handle,
					 e_mr->ib.ib_mr.lkey);
				ret = FUNC1(h_ret);
				break;
			} else
				ret = 0;
		} else if (h_ret != H_PAGE_REGISTERED) {
			FUNC4(&shca->ib_device, "hipz_reg_rpage_mr failed, "
				 "h_ret=%lli e_mr=%p i=%x lkey=%x hca_hndl=%llx "
				 "mr_hndl=%llx", h_ret, e_mr, i,
				 e_mr->ib.ib_mr.lkey,
				 shca->ipz_hca_handle.handle,
				 e_mr->ipz_mr_handle.handle);
			ret = FUNC1(h_ret);
			break;
		} else
			ret = 0;
	} /* end for(i) */


ehca_reg_mr_rpages_exit1:
	FUNC5(kpage);
ehca_reg_mr_rpages_exit0:
	if (ret)
		FUNC4(&shca->ib_device, "ret=%i shca=%p e_mr=%p pginfo=%p "
			 "num_kpages=%llx num_hwpages=%llx", ret, shca, e_mr,
			 pginfo, pginfo->num_kpages, pginfo->num_hwpages);
	return ret;
}