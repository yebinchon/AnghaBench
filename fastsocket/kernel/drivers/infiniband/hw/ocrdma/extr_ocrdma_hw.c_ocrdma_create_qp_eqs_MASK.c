#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ocrdma_eq {int dummy; } ;
struct TYPE_8__ {int num_vectors; int start_vector; } ;
struct TYPE_9__ {scalar_t__ intr_mode; TYPE_1__ msix; } ;
struct ocrdma_dev {int id; int eq_cnt; TYPE_3__* qp_eq_tbl; TYPE_2__ nic_info; } ;
struct TYPE_10__ {int /*<<< orphan*/  irq_name; } ;

/* Variables and functions */
 scalar_t__ BE_INTERRUPT_MODE_INTX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  OCRDMA_EQ_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dev*,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct ocrdma_dev*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_dev*) ; 
 int FUNC6 (struct ocrdma_dev*,TYPE_3__*) ; 
 int /*<<< orphan*/  ocrdma_irq_handler ; 
 int FUNC7 (int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC9(struct ocrdma_dev *dev)
{
	int num_eq, i, status = 0;
	int irq;
	unsigned long flags = 0;

	num_eq = dev->nic_info.msix.num_vectors -
			dev->nic_info.msix.start_vector;
	if (dev->nic_info.intr_mode == BE_INTERRUPT_MODE_INTX) {
		num_eq = 1;
		flags = IRQF_SHARED;
	} else
		num_eq = FUNC2(u32, num_eq, FUNC3());
	dev->qp_eq_tbl = FUNC1(sizeof(struct ocrdma_eq) * num_eq, GFP_KERNEL);
	if (!dev->qp_eq_tbl)
		return -ENOMEM;

	for (i = 0; i < num_eq; i++) {
		status = FUNC4(dev, &dev->qp_eq_tbl[i],
					  OCRDMA_EQ_LEN);
		if (status) {
			status = -EINVAL;
			break;
		}
		FUNC8(dev->qp_eq_tbl[i].irq_name, "ocrdma_qp%d-%d",
			dev->id, i);
		irq = FUNC6(dev, &dev->qp_eq_tbl[i]);
		status = FUNC7(irq, ocrdma_irq_handler, flags,
				     dev->qp_eq_tbl[i].irq_name,
				     &dev->qp_eq_tbl[i]);
		if (status) {
			FUNC0(dev, &dev->qp_eq_tbl[i]);
			status = -EINVAL;
			break;
		}
		dev->eq_cnt += 1;
	}
	/* one eq is sufficient for data path to work */
	if (dev->eq_cnt >= 1)
		return 0;
	if (status)
		FUNC5(dev);
	return status;
}