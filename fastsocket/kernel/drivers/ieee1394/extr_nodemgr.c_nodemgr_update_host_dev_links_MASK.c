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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct node_entry {TYPE_1__ device; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct hpsb_host {int /*<<< orphan*/  id; int /*<<< orphan*/  node_id; int /*<<< orphan*/  busmgr_id; int /*<<< orphan*/  irm_id; struct device device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct node_entry* FUNC1 (struct hpsb_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(struct hpsb_host *host)
{
	struct device *dev = &host->device;
	struct node_entry *ne;

	FUNC3(&dev->kobj, "irm_id");
	FUNC3(&dev->kobj, "busmgr_id");
	FUNC3(&dev->kobj, "host_id");

	if ((ne = FUNC1(host, host->irm_id)) &&
	    FUNC2(&dev->kobj, &ne->device.kobj, "irm_id"))
		goto fail;
	if ((ne = FUNC1(host, host->busmgr_id)) &&
	    FUNC2(&dev->kobj, &ne->device.kobj, "busmgr_id"))
		goto fail;
	if ((ne = FUNC1(host, host->node_id)) &&
	    FUNC2(&dev->kobj, &ne->device.kobj, "host_id"))
		goto fail;
	return;
fail:
	FUNC0("Failed to update sysfs attributes for host %d", host->id);
}