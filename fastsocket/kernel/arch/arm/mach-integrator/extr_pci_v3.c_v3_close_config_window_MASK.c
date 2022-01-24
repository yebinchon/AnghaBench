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

/* Variables and functions */
 int /*<<< orphan*/  PCI_BUS_PREMEM_START ; 
 scalar_t__ PHYS_PCI_MEM_BASE ; 
 scalar_t__ SZ_256M ; 
 int /*<<< orphan*/  V3_LB_BASE0 ; 
 int /*<<< orphan*/  V3_LB_BASE1 ; 
 int V3_LB_BASE_ADR_SIZE_256MB ; 
 int V3_LB_BASE_ENABLE ; 
 int V3_LB_BASE_PREFETCH ; 
 int /*<<< orphan*/  V3_LB_MAP1 ; 
 int V3_LB_MAP_TYPE_MEM_MULTIPLE ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void)
{
	/*
	 * Reassign base1 for use by prefetchable PCI memory
	 */
	FUNC2(V3_LB_BASE1, FUNC0(PHYS_PCI_MEM_BASE + SZ_256M) |
			V3_LB_BASE_ADR_SIZE_256MB | V3_LB_BASE_PREFETCH |
			V3_LB_BASE_ENABLE);
	FUNC3(V3_LB_MAP1, FUNC1(PCI_BUS_PREMEM_START) |
			V3_LB_MAP_TYPE_MEM_MULTIPLE);

	/*
	 * And shrink base0 back to a 256M window (NOTE: MAP0 already correct)
	 */
	FUNC2(V3_LB_BASE0, FUNC0(PHYS_PCI_MEM_BASE) |
			V3_LB_BASE_ADR_SIZE_256MB | V3_LB_BASE_ENABLE);
}