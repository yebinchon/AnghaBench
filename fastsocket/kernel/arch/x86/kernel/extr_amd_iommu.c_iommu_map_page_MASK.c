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
typedef  unsigned long u64 ;
struct protection_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IOMMU_PROT_IR ; 
 int IOMMU_PROT_IW ; 
 int IOMMU_PROT_MASK ; 
 unsigned long IOMMU_PTE_IR ; 
 unsigned long IOMMU_PTE_IW ; 
 unsigned long IOMMU_PTE_P ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 unsigned long* FUNC4 (struct protection_domain*,unsigned long,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct protection_domain*) ; 

__attribute__((used)) static int FUNC6(struct protection_domain *dom,
			  unsigned long bus_addr,
			  unsigned long phys_addr,
			  int prot,
			  int map_size)
{
	u64 __pte, *pte;

	bus_addr  = FUNC2(bus_addr);
	phys_addr = FUNC2(phys_addr);

	FUNC0(!FUNC3(map_size, bus_addr));
	FUNC0(!FUNC3(map_size, phys_addr));

	if (!(prot & IOMMU_PROT_MASK))
		return -EINVAL;

	pte = FUNC4(dom, bus_addr, map_size, NULL, GFP_KERNEL);

	if (FUNC1(*pte))
		return -EBUSY;

	__pte = phys_addr | IOMMU_PTE_P;
	if (prot & IOMMU_PROT_IR)
		__pte |= IOMMU_PTE_IR;
	if (prot & IOMMU_PROT_IW)
		__pte |= IOMMU_PTE_IW;

	*pte = __pte;

	FUNC5(dom);

	return 0;
}