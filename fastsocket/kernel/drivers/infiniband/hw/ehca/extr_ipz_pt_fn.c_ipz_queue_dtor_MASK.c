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
struct ipz_queue {int queue_length; int pagesize; scalar_t__* queue_pages; scalar_t__ small_page; } ;
struct ehca_pd {int dummy; } ;

/* Variables and functions */
 scalar_t__ PAGES_PER_KPAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ipz_queue*,struct ehca_pd*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

int FUNC6(struct ehca_pd *pd, struct ipz_queue *queue)
{
	int i, nr_pages;

	if (!queue || !queue->queue_pages) {
		FUNC0("queue or queue_pages is NULL");
		return 0;
	}

	if (queue->small_page)
		FUNC2(queue, pd);
	else {
		nr_pages = queue->queue_length / queue->pagesize;
		for (i = 0; i < nr_pages; i += PAGES_PER_KPAGE)
			FUNC1((unsigned long)queue->queue_pages[i]);
	}

	if (FUNC3(queue->queue_pages))
		FUNC5(queue->queue_pages);
	else
		FUNC4(queue->queue_pages);

	return 1;
}