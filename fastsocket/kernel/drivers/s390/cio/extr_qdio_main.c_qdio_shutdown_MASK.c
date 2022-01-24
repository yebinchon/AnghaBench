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
struct TYPE_5__ {int sch_no; } ;
struct qdio_irq {scalar_t__ state; int /*<<< orphan*/  setup_mutex; scalar_t__ orig_handler; TYPE_2__ schid; } ;
struct ccw_device {scalar_t__ handler; TYPE_3__* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  sch_no; } ;
struct TYPE_6__ {int /*<<< orphan*/  wait_q; TYPE_1__ schid; struct qdio_irq* qdio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int HZ ; 
 int /*<<< orphan*/  QDIO_DOING_CLEANUP ; 
 int QDIO_FLAG_CLEANUP_USING_CLEAR ; 
 scalar_t__ QDIO_IRQ_STATE_CLEANUP ; 
 scalar_t__ QDIO_IRQ_STATE_ERR ; 
 scalar_t__ QDIO_IRQ_STATE_INACTIVE ; 
 scalar_t__ QDIO_IRQ_STATE_STOPPED ; 
 int FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ qdio_int_handler ; 
 int /*<<< orphan*/  FUNC9 (struct qdio_irq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_irq*,struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 

int FUNC17(struct ccw_device *cdev, int how)
{
	struct qdio_irq *irq_ptr = cdev->private->qdio_data;
	int rc;
	unsigned long flags;

	if (!irq_ptr)
		return -ENODEV;

	FUNC0(FUNC6());
	FUNC2("qshutdown:%4x", cdev->private->schid.sch_no);

	FUNC7(&irq_ptr->setup_mutex);
	/*
	 * Subchannel was already shot down. We cannot prevent being called
	 * twice since cio may trigger a shutdown asynchronously.
	 */
	if (irq_ptr->state == QDIO_IRQ_STATE_INACTIVE) {
		FUNC8(&irq_ptr->setup_mutex);
		return 0;
	}

	/*
	 * Indicate that the device is going down. Scheduling the queue
	 * tasklets is forbidden from here on.
	 */
	FUNC9(irq_ptr, QDIO_IRQ_STATE_STOPPED);

	FUNC15(irq_ptr);
	FUNC11(cdev);
	FUNC10(irq_ptr, cdev);

	/* cleanup subchannel */
	FUNC13(FUNC5(cdev), flags);

	if (how & QDIO_FLAG_CLEANUP_USING_CLEAR)
		rc = FUNC3(cdev, QDIO_DOING_CLEANUP);
	else
		/* default behaviour is halt */
		rc = FUNC4(cdev, QDIO_DOING_CLEANUP);
	if (rc) {
		FUNC1("%4x SHUTD ERR", irq_ptr->schid.sch_no);
		FUNC1("rc:%4d", rc);
		goto no_cleanup;
	}

	FUNC9(irq_ptr, QDIO_IRQ_STATE_CLEANUP);
	FUNC14(FUNC5(cdev), flags);
	FUNC16(cdev->private->wait_q,
		irq_ptr->state == QDIO_IRQ_STATE_INACTIVE ||
		irq_ptr->state == QDIO_IRQ_STATE_ERR,
		10 * HZ);
	FUNC13(FUNC5(cdev), flags);

no_cleanup:
	FUNC12(irq_ptr);

	/* restore interrupt handler */
	if ((void *)cdev->handler == (void *)qdio_int_handler)
		cdev->handler = irq_ptr->orig_handler;
	FUNC14(FUNC5(cdev), flags);

	FUNC9(irq_ptr, QDIO_IRQ_STATE_INACTIVE);
	FUNC8(&irq_ptr->setup_mutex);
	if (rc)
		return rc;
	return 0;
}