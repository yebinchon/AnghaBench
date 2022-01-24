#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  irq_name; } ;
struct TYPE_7__ {int num_vectors; int start_vector; } ;
struct TYPE_8__ {scalar_t__ intr_mode; TYPE_1__ msix; } ;
struct ocrdma_dev {int id; TYPE_3__ meq; TYPE_2__ nic_info; } ;

/* Variables and functions */
 scalar_t__ BE_INTERRUPT_MODE_INTX ; 
 int EBUSY ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  OCRDMA_EQ_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dev*,TYPE_3__*) ; 
 int FUNC1 (struct ocrdma_dev*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocrdma_dev*,TYPE_3__*) ; 
 int /*<<< orphan*/  ocrdma_irq_handler ; 
 int FUNC3 (int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct ocrdma_dev *dev)
{
	int status;
	int irq;
	unsigned long flags = 0;
	int num_eq = 0;

	if (dev->nic_info.intr_mode == BE_INTERRUPT_MODE_INTX)
		flags = IRQF_SHARED;
	else {
		num_eq = dev->nic_info.msix.num_vectors -
				dev->nic_info.msix.start_vector;
		/* minimum two vectors/eq are required for rdma to work.
		 * one for control path and one for data path.
		 */
		if (num_eq < 2)
			return -EBUSY;
	}

	status = FUNC1(dev, &dev->meq, OCRDMA_EQ_LEN);
	if (status)
		return status;
	FUNC4(dev->meq.irq_name, "ocrdma_mq%d", dev->id);
	irq = FUNC2(dev, &dev->meq);
	status = FUNC3(irq, ocrdma_irq_handler, flags, dev->meq.irq_name,
			     &dev->meq);
	if (status)
		FUNC0(dev, &dev->meq);
	return status;
}