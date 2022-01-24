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
typedef  int /*<<< orphan*/  u32 ;
struct pt1_table_page {int /*<<< orphan*/ * buf_pfns; } ;
struct pt1_table {int /*<<< orphan*/ * bufs; int /*<<< orphan*/  addr; struct pt1_table_page* page; } ;
struct pt1 {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PT1_NR_BUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pt1_table_page* FUNC1 (struct pt1*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pt1*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pt1*,struct pt1_table_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pt1*) ; 
 int FUNC5 (struct pt1*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct pt1 *pt1, struct pt1_table *table, u32 *pfnp)
{
	struct pt1_table_page *page;
	dma_addr_t addr;
	int i, ret;
	u32 buf_pfn;

	page = FUNC1(pt1, &addr, pfnp);
	if (page == NULL)
		return -ENOMEM;

	for (i = 0; i < PT1_NR_BUFS; i++) {
		ret = FUNC5(pt1, &table->bufs[i], &buf_pfn);
		if (ret < 0)
			goto err;

		page->buf_pfns[i] = FUNC0(buf_pfn);
	}

	FUNC4(pt1);
	table->page = page;
	table->addr = addr;
	return 0;

err:
	while (i--)
		FUNC2(pt1, &table->bufs[i]);

	FUNC3(pt1, page, addr);
	return ret;
}