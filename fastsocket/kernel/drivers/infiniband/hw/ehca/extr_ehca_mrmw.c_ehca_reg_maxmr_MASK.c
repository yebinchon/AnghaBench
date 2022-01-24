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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct ehca_shca {TYPE_4__ ipz_hca_handle; int /*<<< orphan*/  ib_device; struct ehca_mr* maxmr; } ;
struct ehca_pd {int /*<<< orphan*/  fw_pd; } ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
struct ehca_mr_hipzout_parms {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; TYPE_3__ handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  lkey; } ;
struct TYPE_6__ {TYPE_1__ ib_mr; } ;
struct ehca_mr {scalar_t__* start; int acl; TYPE_3__ ipz_mr_handle; int /*<<< orphan*/  size; int /*<<< orphan*/  hwpage_size; int /*<<< orphan*/  num_hwpages; int /*<<< orphan*/  num_kpages; TYPE_2__ ib; } ;

/* Variables and functions */
 scalar_t__ H_SUCCESS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,struct ehca_mr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_4__,struct ehca_mr*,struct ehca_mr*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ehca_mr_hipzout_parms*) ; 

int FUNC5(struct ehca_shca *shca,
		   struct ehca_mr *e_newmr,
		   u64 *iova_start,
		   int acl,
		   struct ehca_pd *e_pd,
		   u32 *lkey,
		   u32 *rkey)
{
	u64 h_ret;
	struct ehca_mr *e_origmr = shca->maxmr;
	u32 hipz_acl;
	struct ehca_mr_hipzout_parms hipzout;

	FUNC2(acl, &hipz_acl);
	FUNC3(e_origmr->hwpage_size, &hipz_acl);

	h_ret = FUNC4(shca->ipz_hca_handle, e_newmr, e_origmr,
				    (u64)iova_start, hipz_acl, e_pd->fw_pd,
				    &hipzout);
	if (h_ret != H_SUCCESS) {
		FUNC1(&shca->ib_device, "hipz_reg_smr failed, h_ret=%lli "
			 "e_origmr=%p hca_hndl=%llx mr_hndl=%llx lkey=%x",
			 h_ret, e_origmr, shca->ipz_hca_handle.handle,
			 e_origmr->ipz_mr_handle.handle,
			 e_origmr->ib.ib_mr.lkey);
		return FUNC0(h_ret);
	}
	/* successful registration */
	e_newmr->num_kpages = e_origmr->num_kpages;
	e_newmr->num_hwpages = e_origmr->num_hwpages;
	e_newmr->hwpage_size = e_origmr->hwpage_size;
	e_newmr->start = iova_start;
	e_newmr->size = e_origmr->size;
	e_newmr->acl = acl;
	e_newmr->ipz_mr_handle = hipzout.handle;
	*lkey = hipzout.lkey;
	*rkey = hipzout.rkey;
	return 0;
}