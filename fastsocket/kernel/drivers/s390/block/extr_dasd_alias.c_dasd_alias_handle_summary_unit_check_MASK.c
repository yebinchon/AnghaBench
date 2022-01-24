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
struct irb {int dummy; } ;
struct dasd_eckd_private {struct alias_lcu* lcu; } ;
struct dasd_device {int /*<<< orphan*/  alias_list; scalar_t__ private; } ;
struct TYPE_2__ {char reason; int /*<<< orphan*/  worker; struct dasd_device* device; } ;
struct alias_lcu {int flags; TYPE_1__ suc_data; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*,...) ; 
 int /*<<< orphan*/  DBF_NOTICE ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int NEED_UAC_UPDATE ; 
 int UPDATE_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct alias_lcu*,struct dasd_device*) ; 
 char* FUNC2 (struct irb*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct dasd_device *device,
					  struct irb *irb)
{
	struct alias_lcu *lcu;
	char reason;
	struct dasd_eckd_private *private;
	char *sense;

	private = (struct dasd_eckd_private *) device->private;

	sense = FUNC2(irb);
	if (sense) {
		reason = sense[8];
		FUNC0(DBF_NOTICE, device, "%s %x",
			    "eckd handle summary unit check: reason", reason);
	} else {
		FUNC0(DBF_WARNING, device, "%s",
			    "eckd handle summary unit check:"
			    " no reason code available");
		return;
	}

	lcu = private->lcu;
	if (!lcu) {
		FUNC0(DBF_WARNING, device, "%s",
			    "device not ready to handle summary"
			    " unit check (no lcu structure)");
		return;
	}
	FUNC5(&lcu->lock);
	FUNC1(lcu, device);
	/* prepare for lcu_update */
	private->lcu->flags |= NEED_UAC_UPDATE | UPDATE_PENDING;
	/* If this device is about to be removed just return and wait for
	 * the next interrupt on a different device
	 */
	if (FUNC3(&device->alias_list)) {
		FUNC0(DBF_WARNING, device, "%s",
			    "device is in offline processing,"
			    " don't do summary unit check handling");
		FUNC6(&lcu->lock);
		return;
	}
	if (lcu->suc_data.device) {
		/* already scheduled or running */
		FUNC0(DBF_WARNING, device, "%s",
			    "previous instance of summary unit check worker"
			    " still pending");
		FUNC6(&lcu->lock);
		return ;
	}
	lcu->suc_data.reason = reason;
	lcu->suc_data.device = device;
	FUNC6(&lcu->lock);
	FUNC4(&lcu->suc_data.worker);
}