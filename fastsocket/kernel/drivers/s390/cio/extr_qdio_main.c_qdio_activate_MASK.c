#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int sch_no; } ;
struct TYPE_10__ {scalar_t__ cda; int /*<<< orphan*/  count; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_code; } ;
struct TYPE_8__ {int /*<<< orphan*/  count; int /*<<< orphan*/  cmd; } ;
struct qdio_irq {int state; int /*<<< orphan*/  setup_mutex; TYPE_4__ schid; TYPE_5__ ccw; TYPE_3__ aqueue; } ;
struct ccw_device {TYPE_2__* private; } ;
struct TYPE_6__ {int /*<<< orphan*/  sch_no; } ;
struct TYPE_7__ {scalar_t__ state; struct qdio_irq* qdio_data; TYPE_1__ schid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCWDEV_REPORT_ALL ; 
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ DEV_STATE_ONLINE ; 
 int /*<<< orphan*/  DOIO_DENY_PREFETCH ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  QDIO_DOING_ACTIVATE ; 
 int /*<<< orphan*/  QDIO_IRQ_STATE_ACTIVE ; 
#define  QDIO_IRQ_STATE_ERR 129 
 int QDIO_IRQ_STATE_INACTIVE ; 
#define  QDIO_IRQ_STATE_STOPPED 128 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ccw_device*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*) ; 
 scalar_t__ FUNC5 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct qdio_irq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct qdio_irq*) ; 

int FUNC13(struct ccw_device *cdev)
{
	struct qdio_irq *irq_ptr;
	int rc;
	unsigned long saveflags;

	FUNC1("qactivate:%4x", cdev->private->schid.sch_no);

	irq_ptr = cdev->private->qdio_data;
	if (!irq_ptr)
		return -ENODEV;

	if (cdev->private->state != DEV_STATE_ONLINE)
		return -EINVAL;

	FUNC7(&irq_ptr->setup_mutex);
	if (irq_ptr->state == QDIO_IRQ_STATE_INACTIVE) {
		rc = -EBUSY;
		goto out;
	}

	irq_ptr->ccw.cmd_code = irq_ptr->aqueue.cmd;
	irq_ptr->ccw.flags = CCW_FLAG_SLI;
	irq_ptr->ccw.count = irq_ptr->aqueue.count;
	irq_ptr->ccw.cda = 0;

	FUNC10(FUNC4(cdev), saveflags);
	FUNC2(cdev, CCWDEV_REPORT_ALL);

	rc = FUNC3(cdev, &irq_ptr->ccw, QDIO_DOING_ACTIVATE,
			      0, DOIO_DENY_PREFETCH);
	if (rc) {
		FUNC0("%4x act IO ERR", irq_ptr->schid.sch_no);
		FUNC0("rc:%4x", rc);
	}
	FUNC11(FUNC4(cdev), saveflags);

	if (rc)
		goto out;

	if (FUNC5(irq_ptr))
		FUNC12(irq_ptr);

	/* wait for subchannel to become active */
	FUNC6(5);

	switch (irq_ptr->state) {
	case QDIO_IRQ_STATE_STOPPED:
	case QDIO_IRQ_STATE_ERR:
		rc = -EIO;
		break;
	default:
		FUNC9(irq_ptr, QDIO_IRQ_STATE_ACTIVE);
		rc = 0;
	}
out:
	FUNC8(&irq_ptr->setup_mutex);
	return rc;
}