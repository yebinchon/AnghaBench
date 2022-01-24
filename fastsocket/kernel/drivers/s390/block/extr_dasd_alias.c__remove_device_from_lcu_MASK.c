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
struct dasd_eckd_private {struct alias_pav_group* pavgroup; } ;
struct dasd_device {int /*<<< orphan*/  alias_list; scalar_t__ private; } ;
struct alias_pav_group {struct dasd_device* next; int /*<<< orphan*/  group; int /*<<< orphan*/  aliaslist; int /*<<< orphan*/  baselist; } ;
struct alias_lcu {int /*<<< orphan*/  inactive_devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alias_pav_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct alias_lcu *lcu,
				    struct dasd_device *device)
{
	struct dasd_eckd_private *private;
	struct alias_pav_group *group;

	private = (struct dasd_eckd_private *) device->private;
	FUNC3(&device->alias_list, &lcu->inactive_devices);
	group = private->pavgroup;
	if (!group)
		return;
	private->pavgroup = NULL;
	if (FUNC2(&group->baselist) && FUNC2(&group->aliaslist)) {
		FUNC1(&group->group);
		FUNC0(group);
		return;
	}
	if (group->next == device)
		group->next = NULL;
}