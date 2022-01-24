#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  cons; } ;
struct TYPE_11__ {TYPE_2__ erw; } ;
struct TYPE_12__ {TYPE_3__ esw0; } ;
struct TYPE_9__ {int dstat; } ;
struct TYPE_15__ {TYPE_1__ cmd; } ;
struct irb {TYPE_4__ esw; TYPE_7__ scsw; } ;
struct ccw_device {TYPE_6__* private; int /*<<< orphan*/  (* handler ) (struct ccw_device*,int /*<<< orphan*/ ,struct irb*) ;} ;
typedef  enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_13__ {scalar_t__ doverify; scalar_t__ dosense; } ;
struct TYPE_14__ {TYPE_5__ flags; void* state; scalar_t__ intparm; int /*<<< orphan*/  irb; } ;

/* Variables and functions */
 void* DEV_STATE_W4SENSE ; 
 int DEV_STAT_UNIT_CHECK ; 
 scalar_t__ __LC_IRB ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,struct irb*) ; 
 scalar_t__ FUNC1 (struct ccw_device*) ; 
 scalar_t__ FUNC2 (struct ccw_device*,struct irb*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct irb*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ccw_device*,int /*<<< orphan*/ ,struct irb*) ; 

__attribute__((used)) static void
FUNC8(struct ccw_device *cdev, enum dev_event dev_event)
{
	struct irb *irb;
	int is_cmd;

	irb = (struct irb *) __LC_IRB;
	is_cmd = !FUNC6(&irb->scsw);
	/* Check for unsolicited interrupt. */
	if (!FUNC5(&irb->scsw)) {
		if (is_cmd && (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) &&
		    !irb->esw.esw0.erw.cons) {
			/* Unit check but no sense data. Need basic sense. */
			if (FUNC2(cdev, irb) != 0)
				goto call_handler_unsol;
			FUNC4(&cdev->private->irb, irb, sizeof(struct irb));
			cdev->private->state = DEV_STATE_W4SENSE;
			cdev->private->intparm = 0;
			return;
		}
call_handler_unsol:
		if (cdev->handler)
			cdev->handler (cdev, 0, irb);
		if (cdev->private->flags.doverify)
			FUNC3(cdev, 0);
		return;
	}
	/* Accumulate status and find out if a basic sense is needed. */
	FUNC0(cdev, irb);
	if (is_cmd && cdev->private->flags.dosense) {
		if (FUNC2(cdev, irb) == 0) {
			cdev->private->state = DEV_STATE_W4SENSE;
		}
		return;
	}
	/* Call the handler. */
	if (FUNC1(cdev) && cdev->private->flags.doverify)
		/* Start delayed path verification. */
		FUNC3(cdev, 0);
}