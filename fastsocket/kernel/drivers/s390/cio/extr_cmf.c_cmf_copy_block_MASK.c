#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  scsw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct cmb_data {void* last_block; int /*<<< orphan*/  last_update; int /*<<< orphan*/  size; int /*<<< orphan*/  hw_block; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
struct TYPE_8__ {void* (* align ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {struct cmb_data* cmb; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SCSW_ACTL_DEVACT ; 
 int SCSW_ACTL_SCHACT ; 
 int SCSW_ACTL_SUSPENDED ; 
 int SCSW_FCTL_START_FUNC ; 
 int SCSW_STCTL_SEC_STATUS ; 
 scalar_t__ FUNC0 (struct subchannel*) ; 
 TYPE_4__* cmbops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ccw_device *cdev)
{
	struct subchannel *sch;
	void *reference_buf;
	void *hw_block;
	struct cmb_data *cmb_data;

	sch = FUNC10(cdev->dev.parent);

	if (FUNC0(sch))
		return -ENODEV;

	if (FUNC7(&sch->schib.scsw) & SCSW_FCTL_START_FUNC) {
		/* Don't copy if a start function is in progress. */
		if ((!(FUNC6(&sch->schib.scsw) & SCSW_ACTL_SUSPENDED)) &&
		    (FUNC6(&sch->schib.scsw) &
		     (SCSW_ACTL_DEVACT | SCSW_ACTL_SCHACT)) &&
		    (!(FUNC8(&sch->schib.scsw) & SCSW_STCTL_SEC_STATUS)))
			return -EBUSY;
	}
	cmb_data = cdev->private->cmb;
	hw_block = cmbops->align(cmb_data->hw_block);
	if (!FUNC4(cmb_data->last_block, hw_block, cmb_data->size))
		/* No need to copy. */
		return 0;
	reference_buf = FUNC3(cmb_data->size, GFP_ATOMIC);
	if (!reference_buf)
		return -ENOMEM;
	/* Ensure consistency of block copied from hardware. */
	do {
		FUNC5(cmb_data->last_block, hw_block, cmb_data->size);
		FUNC5(reference_buf, hw_block, cmb_data->size);
	} while (FUNC4(cmb_data->last_block, reference_buf, cmb_data->size));
	cmb_data->last_update = FUNC1();
	FUNC2(reference_buf);
	return 0;
}