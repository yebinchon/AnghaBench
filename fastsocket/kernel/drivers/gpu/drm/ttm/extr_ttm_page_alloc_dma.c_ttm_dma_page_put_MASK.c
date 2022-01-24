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
struct dma_pool {int type; int /*<<< orphan*/  dev_name; } ;
struct dma_page {int /*<<< orphan*/  page_list; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int IS_CACHED ; 
 int /*<<< orphan*/  FUNC0 (struct dma_pool*,struct dma_page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct dma_pool *pool, struct dma_page *d_page)
{
	/* Don't set WB on WB page pool. */
	if (!(pool->type & IS_CACHED) && FUNC3(&d_page->p, 1))
		FUNC2("%s: Failed to set %d pages to wb!\n",
		       pool->dev_name, 1);

	FUNC1(&d_page->page_list);
	FUNC0(pool, d_page);
}