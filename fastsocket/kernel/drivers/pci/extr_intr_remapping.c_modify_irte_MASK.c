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
struct irte {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
struct irq_2_iommu {int irte_index; int sub_handle; struct intel_iommu* iommu; } ;
struct intel_iommu {TYPE_1__* ir_table; } ;
struct TYPE_2__ {struct irte* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,struct irte*,int) ; 
 int /*<<< orphan*/  irq_2_ir_lock ; 
 int FUNC1 (struct intel_iommu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct irq_2_iommu* FUNC5 (int) ; 

int FUNC6(int irq, struct irte *irte_modified)
{
	int rc;
	int index;
	struct irte *irte;
	struct intel_iommu *iommu;
	struct irq_2_iommu *irq_iommu;
	unsigned long flags;

	FUNC3(&irq_2_ir_lock, flags);
	irq_iommu = FUNC5(irq);
	if (!irq_iommu) {
		FUNC4(&irq_2_ir_lock, flags);
		return -1;
	}

	iommu = irq_iommu->iommu;

	index = irq_iommu->irte_index + irq_iommu->sub_handle;
	irte = &iommu->ir_table->base[index];

	FUNC2((unsigned long *)&irte->low, irte_modified->low);
	FUNC2((unsigned long *)&irte->high, irte_modified->high);
	FUNC0(iommu, irte, sizeof(*irte));

	rc = FUNC1(iommu, index, 0);
	FUNC4(&irq_2_ir_lock, flags);

	return rc;
}