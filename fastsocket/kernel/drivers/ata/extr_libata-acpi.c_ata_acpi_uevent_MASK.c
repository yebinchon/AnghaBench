#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct kobject {int dummy; } ;
struct ata_port {TYPE_3__* dev; } ;
struct ata_device {TYPE_2__* sdev; } ;
struct TYPE_6__ {struct kobject kobj; } ;
struct TYPE_4__ {struct kobject kobj; } ;
struct TYPE_5__ {TYPE_1__ sdev_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct kobject*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap, struct ata_device *dev,
	u32 event)
{
	struct kobject *kobj = NULL;
	char event_string[20];
	char *envp[] = { event_string, NULL };

	if (dev) {
		if (dev->sdev)
			kobj = &dev->sdev->sdev_gendev.kobj;
	} else
		kobj = &ap->dev->kobj;

	if (kobj) {
		FUNC1(event_string, 20, "BAY_EVENT=%d", event);
		FUNC0(kobj, KOBJ_CHANGE, envp);
	}
}