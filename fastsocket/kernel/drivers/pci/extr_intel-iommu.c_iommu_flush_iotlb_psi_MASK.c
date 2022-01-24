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
typedef  int uint64_t ;
typedef  size_t u16 ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_iotlb ) (struct intel_iommu*,size_t,int,unsigned int,int /*<<< orphan*/ ) ;} ;
struct intel_iommu {int /*<<< orphan*/ * domains; int /*<<< orphan*/  cap; TYPE_1__ flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TLB_DSI_FLUSH ; 
 int /*<<< orphan*/  DMA_TLB_PSI_FLUSH ; 
 int VTD_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_iommu*,size_t,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_iommu*,size_t,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct intel_iommu *iommu, u16 did,
				  unsigned long pfn, unsigned int pages)
{
	unsigned int mask = FUNC5(FUNC1(pages));
	uint64_t addr = (uint64_t)pfn << VTD_PAGE_SHIFT;

	FUNC0(pages == 0);

	/*
	 * Fallback to domain selective flush if no PSI support or the size is
	 * too big.
	 * PSI requires page size to be 2 ^ x, and the base address is naturally
	 * aligned to the size
	 */
	if (!FUNC4(iommu->cap) || mask > FUNC3(iommu->cap))
		iommu->flush.flush_iotlb(iommu, did, 0, 0,
						DMA_TLB_DSI_FLUSH);
	else
		iommu->flush.flush_iotlb(iommu, did, addr, mask,
						DMA_TLB_PSI_FLUSH);

	/*
	 * In caching mode, domain ID 0 is reserved for non-present to present
	 * mapping flush. Device IOTLB doesn't need to be flushed in this case.
	 */
	if (!FUNC2(iommu->cap) || did)
		FUNC6(iommu->domains[did], addr, mask);
}