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
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ehca_debug_level ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC6(struct scatterlist *page_list,
				     int start_idx, int end_idx,
				     u64 *prev_pgaddr)
{
	int t;
	for (t = start_idx; t <= end_idx; t++) {
		u64 pgaddr = FUNC3(FUNC5(&page_list[t])) << PAGE_SHIFT;
		if (ehca_debug_level >= 3)
			FUNC1("chunk_page=%llx value=%016llx", pgaddr,
				     *(u64 *)FUNC0(FUNC4(pgaddr)));
		if (pgaddr - PAGE_SIZE != *prev_pgaddr) {
			FUNC2("uncontiguous page found pgaddr=%llx "
				     "prev_pgaddr=%llx page_list_i=%x",
				     pgaddr, *prev_pgaddr, t);
			return -EINVAL;
		}
		*prev_pgaddr = pgaddr;
	}
	return 0;
}