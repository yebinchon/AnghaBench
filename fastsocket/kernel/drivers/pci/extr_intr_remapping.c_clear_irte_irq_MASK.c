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
typedef  int /*<<< orphan*/  u16 ;
struct irq_2_iommu {scalar_t__ sub_handle; scalar_t__ irte_index; int /*<<< orphan*/ * iommu; } ;
struct intel_iommu {int dummy; } ;
struct TYPE_2__ {scalar_t__ irte_mask; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  irq_2_ir_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct irq_2_iommu* FUNC3 (int) ; 

int FUNC4(int irq, struct intel_iommu *iommu, u16 index)
{
	struct irq_2_iommu *irq_iommu;
	unsigned long flags;

	FUNC1(&irq_2_ir_lock, flags);
	irq_iommu = FUNC3(irq);
	if (!irq_iommu) {
		FUNC2(&irq_2_ir_lock, flags);
		return -1;
	}

	irq_iommu->iommu = NULL;
	irq_iommu->irte_index = 0;
	irq_iommu->sub_handle = 0;
	FUNC0(irq)->irte_mask = 0;

	FUNC2(&irq_2_ir_lock, flags);

	return 0;
}