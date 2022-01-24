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
struct TYPE_2__ {int /*<<< orphan*/  head; } ;
struct radeon_bo_list {TYPE_1__ tv; scalar_t__ wdomain; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 

void FUNC2(struct radeon_bo_list *lobj,
				struct list_head *head)
{
	if (lobj->wdomain) {
		FUNC0(&lobj->tv.head, head);
	} else {
		FUNC1(&lobj->tv.head, head);
	}
}