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
struct senseid {int /*<<< orphan*/  dev_model; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  cu_model; int /*<<< orphan*/  cu_type; } ;
struct ccw_device {TYPE_1__* private; } ;
struct ccw_dev_id {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_2__ {struct senseid senseid; struct ccw_dev_id dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ MACHINE_IS_VM ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int) ; 
 scalar_t__ FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*) ; 

__attribute__((used)) static void FUNC4(struct ccw_device *cdev, void *data, int rc)
{
	struct ccw_dev_id *id = &cdev->private->dev_id;
	struct senseid *senseid = &cdev->private->senseid;
	int vm = 0;

	if (rc && MACHINE_IS_VM) {
		/* Try diag 0x210 fallback on z/VM. */
		FUNC3(cdev);
		if (FUNC2(cdev) == 0) {
			rc = 0;
			vm = 1;
		}
	}
	FUNC0(2, "snsid: device 0.%x.%04x: rc=%d %04x/%02x "
		      "%04x/%02x%s\n", id->ssid, id->devno, rc,
		      senseid->cu_type, senseid->cu_model, senseid->dev_type,
		      senseid->dev_model, vm ? " (diag210)" : "");
	FUNC1(cdev, rc);
}