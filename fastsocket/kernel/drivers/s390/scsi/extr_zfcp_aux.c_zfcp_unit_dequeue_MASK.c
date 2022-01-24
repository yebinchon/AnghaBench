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
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct zfcp_unit {TYPE_2__ sysfs_device; int /*<<< orphan*/  port; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; int /*<<< orphan*/  remove_wq; } ;
struct TYPE_3__ {int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfcp_sysfs_unit_attrs ; 

void FUNC8(struct zfcp_unit *unit)
{
	FUNC4(unit->remove_wq, FUNC0(&unit->refcount) == 0);
	FUNC5(&zfcp_data.config_lock);
	FUNC2(&unit->list);
	FUNC6(&zfcp_data.config_lock);
	FUNC7(unit->port);
	FUNC3(&unit->sysfs_device.kobj, &zfcp_sysfs_unit_attrs);
	FUNC1(&unit->sysfs_device);
}