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
typedef  int u16 ;
struct ocrdma_eqe {int id_valid; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct ocrdma_eq {TYPE_2__ q; struct ocrdma_dev* dev; } ;
struct TYPE_3__ {scalar_t__ intr_mode; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  eqe ;

/* Variables and functions */
 scalar_t__ BE_INTERRUPT_MODE_INTX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int OCRDMA_EQE_FOR_CQE_MASK ; 
 int OCRDMA_EQE_RESOURCE_ID_SHIFT ; 
 int OCRDMA_EQE_VALID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_eq*) ; 
 struct ocrdma_eqe* FUNC2 (struct ocrdma_eq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_eqe*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_dev*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *handle)
{
	struct ocrdma_eq *eq = handle;
	struct ocrdma_dev *dev = eq->dev;
	struct ocrdma_eqe eqe;
	struct ocrdma_eqe *ptr;
	u16 eqe_popped = 0;
	u16 cq_id;
	while (1) {
		ptr = FUNC2(eq);
		eqe = *ptr;
		FUNC3(&eqe, sizeof(eqe));
		if ((eqe.id_valid & OCRDMA_EQE_VALID_MASK) == 0)
			break;
		eqe_popped += 1;
		ptr->id_valid = 0;
		/* check whether its CQE or not. */
		if ((eqe.id_valid & OCRDMA_EQE_FOR_CQE_MASK) == 0) {
			cq_id = eqe.id_valid >> OCRDMA_EQE_RESOURCE_ID_SHIFT;
			FUNC0(dev, cq_id);
		}
		FUNC1(eq);
	}
	FUNC4(dev, eq->q.id, true, true, eqe_popped);
	/* Ring EQ doorbell with num_popped to 0 to enable interrupts again. */
	if (dev->nic_info.intr_mode == BE_INTERRUPT_MODE_INTX)
		FUNC4(dev, eq->q.id, true, true, 0);
	return IRQ_HANDLED;
}