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
struct dm_kcopyd_client {unsigned int nr_reserved_pages; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct page_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_kcopyd_client*,struct page_list*) ; 

__attribute__((used)) static int FUNC3(struct dm_kcopyd_client *kc, unsigned nr_pages)
{
	unsigned i;
	struct page_list *pl = NULL, *next;

	for (i = 0; i < nr_pages; i++) {
		next = FUNC0(GFP_KERNEL);
		if (!next) {
			if (pl)
				FUNC1(pl);
			return -ENOMEM;
		}
		next->next = pl;
		pl = next;
	}

	kc->nr_reserved_pages += nr_pages;
	FUNC2(kc, pl);

	return 0;
}