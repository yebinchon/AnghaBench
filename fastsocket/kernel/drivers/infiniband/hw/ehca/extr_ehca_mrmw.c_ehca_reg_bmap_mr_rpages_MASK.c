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
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct ehca_shca {TYPE_3__ ipz_hca_handle; int /*<<< orphan*/  ib_device; } ;
struct ehca_mr_pginfo {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  lkey; } ;
struct TYPE_7__ {TYPE_1__ ib_mr; } ;
struct ehca_mr {TYPE_4__ ipz_mr_handle; TYPE_2__ ib; } ;
struct TYPE_10__ {int /*<<< orphan*/ * top; } ;

/* Variables and functions */
 int EHCA_MAP_ENTRIES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ H_PAGE_REGISTERED ; 
 scalar_t__ H_SUCCESS ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* ehca_bmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (int,scalar_t__*,struct ehca_shca*,struct ehca_mr*,struct ehca_mr_pginfo*) ; 

__attribute__((used)) static int FUNC6(struct ehca_shca *shca,
				   struct ehca_mr *e_mr,
				   struct ehca_mr_pginfo *pginfo)
{
	int top;
	u64 hret, *kpage;

	kpage = FUNC1(GFP_KERNEL);
	if (!kpage) {
		FUNC3(&shca->ib_device, "kpage alloc failed");
		return -ENOMEM;
	}
	for (top = 0; top < EHCA_MAP_ENTRIES; top++) {
		if (!FUNC2(ehca_bmap->top[top]))
			continue;
		hret = FUNC5(top, kpage, shca, e_mr, pginfo);
		if ((hret != H_PAGE_REGISTERED) && (hret != H_SUCCESS))
			break;
	}

	FUNC4(kpage);

	if (hret == H_SUCCESS)
		return 0; /* Everything is fine */
	else {
		FUNC3(&shca->ib_device, "ehca_reg_bmap_mr_rpages failed, "
				 "h_ret=%lli e_mr=%p top=%x lkey=%x "
				 "hca_hndl=%llx mr_hndl=%llx", hret, e_mr, top,
				 e_mr->ib.ib_mr.lkey,
				 shca->ipz_hca_handle.handle,
				 e_mr->ipz_mr_handle.handle);
		return FUNC0(hret);
	}
}