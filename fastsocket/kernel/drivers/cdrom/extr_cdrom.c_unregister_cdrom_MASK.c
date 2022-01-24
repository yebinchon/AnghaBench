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
struct cdrom_device_info {int /*<<< orphan*/  name; TYPE_1__* ops; int /*<<< orphan*/  (* exit ) (struct cdrom_device_info*) ;int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  n_minors; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD_OPEN ; 
 int /*<<< orphan*/  CD_REG_UNREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  cdrom_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cdrom_device_info*) ; 

void FUNC5(struct cdrom_device_info *cdi)
{
	FUNC0(CD_OPEN, "entering unregister_cdrom\n"); 

	FUNC2(&cdrom_mutex);
	FUNC1(&cdi->list);
	FUNC3(&cdrom_mutex);

	if (cdi->exit)
		cdi->exit(cdi);

	cdi->ops->n_minors--;
	FUNC0(CD_REG_UNREG, "drive \"/dev/%s\" unregistered\n", cdi->name);
}