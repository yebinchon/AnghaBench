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
typedef  int u32 ;
struct intel_iommu {int /*<<< orphan*/  register_lock; scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ DMAR_PMEN_REG ; 
 int DMA_PMEN_EPM ; 
 int DMA_PMEN_PRS ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,scalar_t__,int (*) (scalar_t__),int,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct intel_iommu *iommu)
{
	u32 pmen;
	unsigned long flags;

	FUNC2(&iommu->register_lock, flags);
	pmen = FUNC1(iommu->reg + DMAR_PMEN_REG);
	pmen &= ~DMA_PMEN_EPM;
	FUNC4(pmen, iommu->reg + DMAR_PMEN_REG);

	/* wait for the protected region status bit to clear */
	FUNC0(iommu, DMAR_PMEN_REG,
		readl, !(pmen & DMA_PMEN_PRS), pmen);

	FUNC3(&iommu->register_lock, flags);
}