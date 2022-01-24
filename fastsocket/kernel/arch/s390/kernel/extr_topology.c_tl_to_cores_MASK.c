#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
union tl_entry {int nl; int /*<<< orphan*/  cpu; TYPE_1__ container; } ;
struct tl_info {scalar_t__ length; union tl_entry* tle; } ;
struct mask_info {int /*<<< orphan*/  id; struct mask_info* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mask_info*,struct mask_info*) ; 
 struct mask_info book_info ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mask_info core_info ; 
 int /*<<< orphan*/  machine_has_topology ; 
 union tl_entry* FUNC2 (union tl_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  topology_lock ; 

__attribute__((used)) static void FUNC5(struct tl_info *info)
{
#ifdef CONFIG_SCHED_BOOK
	struct mask_info *book = &book_info;
#else
	struct mask_info *book = NULL;
#endif
	struct mask_info *core = &core_info;
	union tl_entry *tle, *end;


	FUNC3(&topology_lock);
	FUNC1();
	tle = info->tle;
	end = (union tl_entry *)((unsigned long)info + info->length);
	while (tle < end) {
		switch (tle->nl) {
#ifdef CONFIG_SCHED_BOOK
		case 2:
			book = book->next;
			book->id = tle->container.id;
			break;
#endif
		case 1:
			core = core->next;
			core->id = tle->container.id;
			break;
		case 0:
			FUNC0(&tle->cpu, book, core);
			break;
		default:
			FUNC1();
			machine_has_topology = 0;
			goto out;
		}
		tle = FUNC2(tle);
	}
out:
	FUNC4(&topology_lock);
}