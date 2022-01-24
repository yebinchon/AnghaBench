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
struct qdio_irq {int /*<<< orphan*/  setup_mutex; int /*<<< orphan*/ * debug_area; } ;
struct ccw_device {TYPE_2__* private; } ;
struct TYPE_3__ {int /*<<< orphan*/  sch_no; } ;
struct TYPE_4__ {struct qdio_irq* qdio_data; TYPE_1__ schid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_irq*) ; 

int FUNC5(struct ccw_device *cdev)
{
	struct qdio_irq *irq_ptr = cdev->private->qdio_data;

	if (!irq_ptr)
		return -ENODEV;

	FUNC0("qfree:%4x", cdev->private->schid.sch_no);
	FUNC2(&irq_ptr->setup_mutex);

	if (irq_ptr->debug_area != NULL) {
		FUNC1(irq_ptr->debug_area);
		irq_ptr->debug_area = NULL;
	}
	cdev->private->qdio_data = NULL;
	FUNC3(&irq_ptr->setup_mutex);

	FUNC4(irq_ptr);
	return 0;
}