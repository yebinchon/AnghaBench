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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INV_IOMMU_ALL_PAGES_ADDRESS ; 
 int /*<<< orphan*/  PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct amd_iommu *iommu, u16 domid,
		u64 address, size_t size)
{
	int s = 0;
	unsigned pages = FUNC0(address, size, PAGE_SIZE);

	address &= PAGE_MASK;

	if (pages > 1) {
		/*
		 * If we have to flush more than one page, flush all
		 * TLB entries for this domain
		 */
		address = CMD_INV_IOMMU_ALL_PAGES_ADDRESS;
		s = 1;
	}

	FUNC1(iommu, address, domid, 0, s);

	return 0;
}