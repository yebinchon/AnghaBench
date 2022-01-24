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
struct pvr2_sysfs_ctl_item {int /*<<< orphan*/  grp; scalar_t__ created_ok; struct pvr2_sysfs_ctl_item* item_next; } ;
struct pvr2_sysfs {TYPE_1__* class_dev; struct pvr2_sysfs_ctl_item* item_first; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_sysfs_ctl_item*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pvr2_sysfs_ctl_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pvr2_sysfs *sfp)
{
	struct pvr2_sysfs_ctl_item *cip1,*cip2;
	for (cip1 = sfp->item_first; cip1; cip1 = cip2) {
		cip2 = cip1->item_next;
		if (cip1->created_ok) {
			FUNC2(&sfp->class_dev->kobj,&cip1->grp);
		}
		FUNC1("Destroying pvr2_sysfs_ctl_item id=%p",cip1);
		FUNC0(cip1);
	}
}