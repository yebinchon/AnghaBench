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
struct msi_msg {void* address_hi; void* address_lo; void* data; } ;
struct intel_iommu {int /*<<< orphan*/  register_lock; scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ DMAR_FEADDR_REG ; 
 scalar_t__ DMAR_FEDATA_REG ; 
 scalar_t__ DMAR_FEUADDR_REG ; 
 struct intel_iommu* FUNC0 (int) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(int irq, struct msi_msg *msg)
{
	struct intel_iommu *iommu = FUNC0(irq);
	unsigned long flag;

	FUNC2(&iommu->register_lock, flag);
	msg->data = FUNC1(iommu->reg + DMAR_FEDATA_REG);
	msg->address_lo = FUNC1(iommu->reg + DMAR_FEADDR_REG);
	msg->address_hi = FUNC1(iommu->reg + DMAR_FEUADDR_REG);
	FUNC3(&iommu->register_lock, flag);
}