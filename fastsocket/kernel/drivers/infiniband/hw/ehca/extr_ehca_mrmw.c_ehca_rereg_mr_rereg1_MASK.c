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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ehca_shca {int /*<<< orphan*/  ib_device; int /*<<< orphan*/  ipz_hca_handle; } ;
struct ehca_pd {int /*<<< orphan*/  fw_pd; } ;
struct ehca_mr_pginfo {int /*<<< orphan*/  num_hwpages; int /*<<< orphan*/  num_kpages; int /*<<< orphan*/  hwpage_size; int /*<<< orphan*/  type; } ;
struct ehca_mr_hipzout_parms {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; scalar_t__ vaddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  lkey; } ;
struct TYPE_6__ {TYPE_2__ ib_mr; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
struct ehca_mr {scalar_t__* start; int /*<<< orphan*/  acl; scalar_t__ size; int /*<<< orphan*/  hwpage_size; int /*<<< orphan*/  num_hwpages; int /*<<< orphan*/  num_kpages; TYPE_3__ ib; TYPE_1__ ipz_mr_handle; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ H_SUCCESS ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ehca_mr_pginfo*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__,struct ehca_mr*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct ehca_mr*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct ehca_mr_hipzout_parms*) ; 
 scalar_t__ FUNC8 (scalar_t__*) ; 

inline int FUNC9(struct ehca_shca *shca,
				struct ehca_mr *e_mr,
				u64 *iova_start,
				u64 size,
				u32 acl,
				struct ehca_pd *e_pd,
				struct ehca_mr_pginfo *pginfo,
				u32 *lkey, /*OUT*/
				u32 *rkey) /*OUT*/
{
	int ret;
	u64 h_ret;
	u32 hipz_acl;
	u64 *kpage;
	u64 rpage;
	struct ehca_mr_pginfo pginfo_save;
	struct ehca_mr_hipzout_parms hipzout;

	FUNC3(acl, &hipz_acl);
	FUNC4(pginfo->hwpage_size, &hipz_acl);

	kpage = FUNC0(GFP_KERNEL);
	if (!kpage) {
		FUNC1(&shca->ib_device, "kpage alloc failed");
		ret = -ENOMEM;
		goto ehca_rereg_mr_rereg1_exit0;
	}

	pginfo_save = *pginfo;
	ret = FUNC5(pginfo, pginfo->num_hwpages, kpage);
	if (ret) {
		FUNC1(&shca->ib_device, "set pagebuf failed, e_mr=%p "
			 "pginfo=%p type=%x num_kpages=%llx num_hwpages=%llx "
			 "kpage=%p", e_mr, pginfo, pginfo->type,
			 pginfo->num_kpages, pginfo->num_hwpages, kpage);
		goto ehca_rereg_mr_rereg1_exit1;
	}
	rpage = FUNC8(kpage);
	if (!rpage) {
		FUNC1(&shca->ib_device, "kpage=%p", kpage);
		ret = -EFAULT;
		goto ehca_rereg_mr_rereg1_exit1;
	}
	h_ret = FUNC7(shca->ipz_hca_handle, e_mr,
				      (u64)iova_start, size, hipz_acl,
				      e_pd->fw_pd, rpage, &hipzout);
	if (h_ret != H_SUCCESS) {
		/*
		 * reregistration unsuccessful, try it again with the 3 hCalls,
		 * e.g. this is required in case H_MR_CONDITION
		 * (MW bound or MR is shared)
		 */
		FUNC6(&shca->ib_device, "hipz_h_reregister_pmr failed "
			  "(Rereg1), h_ret=%lli e_mr=%p", h_ret, e_mr);
		*pginfo = pginfo_save;
		ret = -EAGAIN;
	} else if ((u64 *)hipzout.vaddr != iova_start) {
		FUNC1(&shca->ib_device, "PHYP changed iova_start in "
			 "rereg_pmr, iova_start=%p iova_start_out=%llx e_mr=%p "
			 "mr_handle=%llx lkey=%x lkey_out=%x", iova_start,
			 hipzout.vaddr, e_mr, e_mr->ipz_mr_handle.handle,
			 e_mr->ib.ib_mr.lkey, hipzout.lkey);
		ret = -EFAULT;
	} else {
		/*
		 * successful reregistration
		 * note: start and start_out are identical for eServer HCAs
		 */
		e_mr->num_kpages = pginfo->num_kpages;
		e_mr->num_hwpages = pginfo->num_hwpages;
		e_mr->hwpage_size = pginfo->hwpage_size;
		e_mr->start = iova_start;
		e_mr->size = size;
		e_mr->acl = acl;
		*lkey = hipzout.lkey;
		*rkey = hipzout.rkey;
	}

ehca_rereg_mr_rereg1_exit1:
	FUNC2(kpage);
ehca_rereg_mr_rereg1_exit0:
	if ( ret && (ret != -EAGAIN) )
		FUNC1(&shca->ib_device, "ret=%i lkey=%x rkey=%x "
			 "pginfo=%p num_kpages=%llx num_hwpages=%llx",
			 ret, *lkey, *rkey, pginfo, pginfo->num_kpages,
			 pginfo->num_hwpages);
	return ret;
}