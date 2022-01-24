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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct intel_iommu {int reg; int /*<<< orphan*/  register_lock; int /*<<< orphan*/  cap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DMAR_FSTS_REG ; 
 int DMA_FRCD_F ; 
 int DMA_FSTS_PPF ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int PRIMARY_FAULT_REG_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_iommu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

irqreturn_t FUNC14(int irq, void *dev_id)
{
	struct intel_iommu *iommu = dev_id;
	int reg, fault_index;
	u32 fault_status;
	unsigned long flag;

	FUNC11(&iommu->register_lock, flag);
	fault_status = FUNC10(iommu->reg + DMAR_FSTS_REG);
	if (fault_status)
		FUNC9("DRHD: handling fault status reg %x\n", fault_status);

	/* TBD: ignore advanced fault log currently */
	if (!(fault_status & DMA_FSTS_PPF))
		goto clear_rest;

	fault_index = FUNC6(fault_status);
	reg = FUNC0(iommu->cap);
	while (1) {
		u8 fault_reason;
		u16 source_id;
		u64 guest_addr;
		int type;
		u32 data;

		/* highest 32 bits */
		data = FUNC10(iommu->reg + reg +
				fault_index * PRIMARY_FAULT_REG_LEN + 12);
		if (!(data & DMA_FRCD_F))
			break;

		fault_reason = FUNC2(data);
		type = FUNC5(data);

		data = FUNC10(iommu->reg + reg +
				fault_index * PRIMARY_FAULT_REG_LEN + 8);
		source_id = FUNC4(data);

		guest_addr = FUNC8(iommu->reg + reg +
				fault_index * PRIMARY_FAULT_REG_LEN);
		guest_addr = FUNC3(guest_addr);
		/* clear the fault */
		FUNC13(DMA_FRCD_F, iommu->reg + reg +
			fault_index * PRIMARY_FAULT_REG_LEN + 12);

		FUNC12(&iommu->register_lock, flag);

		FUNC7(iommu, type, fault_reason,
				source_id, guest_addr);

		fault_index++;
		if (fault_index >= FUNC1(iommu->cap))
			fault_index = 0;
		FUNC11(&iommu->register_lock, flag);
	}
clear_rest:
	/* clear all the other faults */
	fault_status = FUNC10(iommu->reg + DMAR_FSTS_REG);
	FUNC13(fault_status, iommu->reg + DMAR_FSTS_REG);

	FUNC12(&iommu->register_lock, flag);
	return IRQ_HANDLED;
}