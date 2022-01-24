#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct agp_memory {scalar_t__ type; size_t page_count; int /*<<< orphan*/  key; int /*<<< orphan*/ * pages; TYPE_2__* bridge; scalar_t__ is_bound; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* agp_destroy_page ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* agp_destroy_pages ) (struct agp_memory*) ;int /*<<< orphan*/  (* free_by_type ) (struct agp_memory*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_PAGE_DESTROY_FREE ; 
 int /*<<< orphan*/  AGP_PAGE_DESTROY_UNMAP ; 
 scalar_t__ AGP_USER_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct agp_memory*) ; 
 int /*<<< orphan*/  FUNC2 (struct agp_memory*) ; 
 int /*<<< orphan*/  FUNC3 (struct agp_memory*) ; 
 int /*<<< orphan*/  FUNC4 (struct agp_memory*) ; 
 int /*<<< orphan*/  FUNC5 (struct agp_memory*) ; 
 int /*<<< orphan*/  FUNC6 (struct agp_memory*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct agp_memory *curr)
{
	size_t i;

	if (curr == NULL)
		return;

	if (curr->is_bound)
		FUNC3(curr);

	if (curr->type >= AGP_USER_TYPES) {
		FUNC2(curr);
		return;
	}

	if (curr->type != 0) {
		curr->bridge->driver->free_by_type(curr);
		return;
	}
	if (curr->page_count != 0) {
		if (curr->bridge->driver->agp_destroy_pages) {
			curr->bridge->driver->agp_destroy_pages(curr);
		} else {

			for (i = 0; i < curr->page_count; i++) {
				curr->bridge->driver->agp_destroy_page(
					curr->pages[i],
					AGP_PAGE_DESTROY_UNMAP);
			}
			for (i = 0; i < curr->page_count; i++) {
				curr->bridge->driver->agp_destroy_page(
					curr->pages[i],
					AGP_PAGE_DESTROY_FREE);
			}
		}
	}
	FUNC0(curr->key);
	FUNC1(curr);
	FUNC4(curr);
}