#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_13__ {int /*<<< orphan*/  ac; } ;
struct TYPE_12__ {int /*<<< orphan*/  mmwc; } ;
struct TYPE_10__ {int sch_no; } ;
struct TYPE_14__ {scalar_t__ cda; int /*<<< orphan*/  count; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_code; } ;
struct TYPE_9__ {int /*<<< orphan*/  count; int /*<<< orphan*/  cmd; } ;
struct qdio_irq {scalar_t__ state; int /*<<< orphan*/  setup_mutex; TYPE_6__ qib; TYPE_5__ ssqd_desc; TYPE_3__ schid; TYPE_7__ ccw; scalar_t__ qdr; TYPE_2__ equeue; } ;
struct qdio_initialize {struct ccw_device* cdev; } ;
struct ccw_device {TYPE_4__* private; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  sch_no; } ;
struct TYPE_11__ {scalar_t__ state; int /*<<< orphan*/  wait_q; struct qdio_irq* qdio_data; TYPE_1__ schid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ DEV_STATE_ONLINE ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  QDIO_DOING_ESTABLISH ; 
 int /*<<< orphan*/  QDIO_FLAG_CLEANUP_USING_CLEAR ; 
 scalar_t__ QDIO_IRQ_STATE_ERR ; 
 scalar_t__ QDIO_IRQ_STATE_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ccw_device*,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct qdio_irq*) ; 
 int FUNC8 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC9 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_irq*,struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct qdio_irq*,struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct qdio_initialize*) ; 
 int /*<<< orphan*/  FUNC13 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC14 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC18(struct qdio_initialize *init_data)
{
	struct qdio_irq *irq_ptr;
	struct ccw_device *cdev = init_data->cdev;
	unsigned long saveflags;
	int rc;

	FUNC1("qestablish:%4x", cdev->private->schid.sch_no);

	irq_ptr = cdev->private->qdio_data;
	if (!irq_ptr)
		return -ENODEV;

	if (cdev->private->state != DEV_STATE_ONLINE)
		return -EINVAL;

	FUNC5(&irq_ptr->setup_mutex);
	FUNC12(init_data);

	rc = FUNC8(irq_ptr);
	if (rc) {
		FUNC6(&irq_ptr->setup_mutex);
		FUNC14(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
		return rc;
	}

	/* establish q */
	irq_ptr->ccw.cmd_code = irq_ptr->equeue.cmd;
	irq_ptr->ccw.flags = CCW_FLAG_SLI;
	irq_ptr->ccw.count = irq_ptr->equeue.count;
	irq_ptr->ccw.cda = (u32)((addr_t)irq_ptr->qdr);

	FUNC15(FUNC4(cdev), saveflags);
	FUNC2(cdev, 0);

	rc = FUNC3(cdev, &irq_ptr->ccw, QDIO_DOING_ESTABLISH, 0, 0);
	if (rc) {
		FUNC0("%4x est IO ERR", irq_ptr->schid.sch_no);
		FUNC0("rc:%4x", rc);
	}
	FUNC16(FUNC4(cdev), saveflags);

	if (rc) {
		FUNC6(&irq_ptr->setup_mutex);
		FUNC14(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
		return rc;
	}

	FUNC17(cdev->private->wait_q,
		irq_ptr->state == QDIO_IRQ_STATE_ESTABLISHED ||
		irq_ptr->state == QDIO_IRQ_STATE_ERR, HZ);

	if (irq_ptr->state != QDIO_IRQ_STATE_ESTABLISHED) {
		FUNC6(&irq_ptr->setup_mutex);
		FUNC14(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
		return -EIO;
	}

	FUNC13(irq_ptr);
	FUNC1("qDmmwc:%2x", irq_ptr->ssqd_desc.mmwc);
	FUNC1("qib ac:%4x", irq_ptr->qib.ac);

	FUNC7(irq_ptr);

	/* qebsm is now setup if available, initialize buffer states */
	FUNC9(irq_ptr);

	FUNC6(&irq_ptr->setup_mutex);
	FUNC10(irq_ptr, cdev);
	FUNC11(irq_ptr, cdev);
	return 0;
}