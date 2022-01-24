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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; TYPE_2__* host; } ;
struct module {int dummy; } ;
struct TYPE_4__ {TYPE_1__* hostt; } ;
struct TYPE_3__ {struct module* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct module*) ; 
 scalar_t__ FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct scsi_device *sdev)
{
#ifdef CONFIG_MODULE_UNLOAD
	struct module *module = sdev->host->hostt->module;

	/* The module refcount will be zero if scsi_device_get()
	 * was called from a module removal routine */
	if (module && module_refcount(module) != 0)
		module_put(module);
#endif
	FUNC2(&sdev->sdev_gendev);
}