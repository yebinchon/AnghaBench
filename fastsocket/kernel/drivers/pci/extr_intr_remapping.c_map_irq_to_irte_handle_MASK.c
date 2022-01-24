#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct irq_2_iommu {int irte_index; int /*<<< orphan*/  sub_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  irq_2_ir_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct irq_2_iommu* FUNC2 (int) ; 

int FUNC3(int irq, u16 *sub_handle)
{
	int index;
	struct irq_2_iommu *irq_iommu;
	unsigned long flags;

	FUNC0(&irq_2_ir_lock, flags);
	irq_iommu = FUNC2(irq);
	if (!irq_iommu) {
		FUNC1(&irq_2_ir_lock, flags);
		return -1;
	}

	*sub_handle = irq_iommu->sub_handle;
	index = irq_iommu->irte_index;
	FUNC1(&irq_2_ir_lock, flags);
	return index;
}