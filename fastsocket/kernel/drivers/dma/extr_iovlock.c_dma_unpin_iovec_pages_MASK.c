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
struct dma_pinned_list {int nr_iovecs; struct dma_page_list* page_list; } ;
struct dma_page_list {int nr_pages; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_pinned_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct dma_pinned_list *pinned_list)
{
	int i, j;

	if (!pinned_list)
		return;

	for (i = 0; i < pinned_list->nr_iovecs; i++) {
		struct dma_page_list *page_list = &pinned_list->page_list[i];
		for (j = 0; j < page_list->nr_pages; j++) {
			FUNC2(page_list->pages[j]);
			FUNC1(page_list->pages[j]);
		}
	}

	FUNC0(pinned_list);
}