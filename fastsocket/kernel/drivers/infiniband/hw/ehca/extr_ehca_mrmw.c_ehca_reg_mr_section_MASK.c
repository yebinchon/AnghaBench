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
typedef  scalar_t__ u64 ;
struct ehca_shca {int /*<<< orphan*/  ib_device; int /*<<< orphan*/  ipz_hca_handle; } ;
struct ehca_mr_pginfo {int hwpage_size; } ;
struct ehca_mr {int dummy; } ;

/* Variables and functions */
 int EHCA_SECTSIZE ; 
 scalar_t__ H_PAGE_REGISTERED ; 
 scalar_t__ H_SUCCESS ; 
 scalar_t__ MAX_RPAGES ; 
 void* FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct ehca_mr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (void*) ; 

__attribute__((used)) static u64 FUNC5(int top, int dir, int idx, u64 *kpage,
			       struct ehca_shca *shca, struct ehca_mr *mr,
			       struct ehca_mr_pginfo *pginfo)
{
	u64 h_ret = 0;
	unsigned long page = 0;
	u64 rpage = FUNC4(kpage);
	int page_count;

	void *sectbase = FUNC0(top, dir, idx);
	if ((unsigned long)sectbase & (pginfo->hwpage_size - 1)) {
		FUNC2(&shca->ib_device, "reg_mr_section will probably fail:"
					   "hwpage_size does not fit to "
					   "section start address");
	}
	page_count = EHCA_SECTSIZE / pginfo->hwpage_size;

	while (page < page_count) {
		u64 rnum;
		for (rnum = 0; (rnum < MAX_RPAGES) && (page < page_count);
		     rnum++) {
			void *pg = sectbase + ((page++) * pginfo->hwpage_size);
			kpage[rnum] = FUNC4(pg);
		}

		h_ret = FUNC3(shca->ipz_hca_handle, mr,
			FUNC1(pginfo->hwpage_size),
			0, rpage, rnum);

		if ((h_ret != H_SUCCESS) && (h_ret != H_PAGE_REGISTERED)) {
			FUNC2(&shca->ib_device, "register_rpage_mr failed");
			return h_ret;
		}
	}
	return h_ret;
}