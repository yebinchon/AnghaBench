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
struct vm_struct {struct grant_entry* addr; } ;
struct grant_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned long**) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  map_pte_fn ; 
 struct vm_struct* FUNC2 (unsigned long) ; 

int FUNC3(unsigned long *frames, unsigned long nr_gframes,
			   unsigned long max_nr_gframes,
			   struct grant_entry **__shared)
{
	int rc;
	struct grant_entry *shared = *__shared;

	if (shared == NULL) {
		struct vm_struct *area =
			FUNC2(PAGE_SIZE * max_nr_gframes);
		FUNC0(area == NULL);
		shared = area->addr;
		*__shared = shared;
	}

	rc = FUNC1(&init_mm, (unsigned long)shared,
				 PAGE_SIZE * nr_gframes,
				 map_pte_fn, &frames);
	return rc;
}