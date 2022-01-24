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
struct page_list {struct page_list* next; } ;
struct dm_kcopyd_client {int /*<<< orphan*/  nr_free_pages; struct page_list* pages; } ;

/* Variables and functions */
 int ENOMEM ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 struct page_list* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_kcopyd_client*,struct page_list*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dm_kcopyd_client *kc,
			    unsigned int nr, struct page_list **pages)
{
	struct page_list *pl;

	*pages = NULL;

	do {
		pl = FUNC0(__GFP_NOWARN | __GFP_NORETRY);
		if (FUNC2(!pl)) {
			/* Use reserved pages */
			pl = kc->pages;
			if (FUNC2(!pl))
				goto out_of_memory;
			kc->pages = pl->next;
			kc->nr_free_pages--;
		}
		pl->next = *pages;
		*pages = pl;
	} while (--nr);

	return 0;

out_of_memory:
	if (*pages)
		FUNC1(kc, *pages);
	return -ENOMEM;
}