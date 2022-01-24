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
typedef  int /*<<< orphan*/  u64 ;
struct scatterlist {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct ldc_trans_cookie {int dummy; } ;
struct ldc_mtable_entry {int dummy; } ;
struct ldc_iommu {int page_table; int /*<<< orphan*/  lock; } ;
struct ldc_channel {struct ldc_iommu iommu; } ;
struct cookie_state {int page_table; int nc; struct ldc_mtable_entry* pte_idx; int /*<<< orphan*/  prev_cookie; int /*<<< orphan*/  mte_base; struct ldc_trans_cookie* cookies; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 unsigned int LDC_MAP_ALL ; 
 int PAGE_SHIFT ; 
 struct ldc_mtable_entry* FUNC0 (struct ldc_iommu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct cookie_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int FUNC4 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct ldc_channel *lp,
	       struct scatterlist *sg, int num_sg,
	       struct ldc_trans_cookie *cookies, int ncookies,
	       unsigned int map_perm)
{
	unsigned long i, npages, flags;
	struct ldc_mtable_entry *base;
	struct cookie_state state;
	struct ldc_iommu *iommu;
	int err;

	if (map_perm & ~LDC_MAP_ALL)
		return -EINVAL;

	err = FUNC4(sg, num_sg);
	if (err < 0)
		return err;

	npages = err;
	if (err > ncookies)
		return -EMSGSIZE;

	iommu = &lp->iommu;

	FUNC6(&iommu->lock, flags);
	base = FUNC0(iommu, npages);
	FUNC7(&iommu->lock, flags);

	if (!base)
		return -ENOMEM;

	state.page_table = iommu->page_table;
	state.cookies = cookies;
	state.mte_base = FUNC3(map_perm);
	state.prev_cookie = ~(u64)0;
	state.pte_idx = (base - iommu->page_table);
	state.nc = 0;

	for (i = 0; i < num_sg; i++)
		FUNC1(&state, FUNC2(FUNC5(&sg[i])) << PAGE_SHIFT,
			     sg[i].offset, sg[i].length);

	return state.nc;
}