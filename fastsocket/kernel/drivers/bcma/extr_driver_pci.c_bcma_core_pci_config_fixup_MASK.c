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
typedef  int /*<<< orphan*/  uint ;
typedef  int u16 ;
struct bcma_drv_pci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BCMA_CORE_PCI_SPROM_L23READY_EXIT_NOPERST ; 
 int /*<<< orphan*/  BCMA_CORE_PCI_SPROM_MISC_CONFIG ; 
 int FUNC1 (struct bcma_drv_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_drv_pci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct bcma_drv_pci *pc)
{
	u16 val16;
	uint regoff;

	regoff = FUNC0(BCMA_CORE_PCI_SPROM_MISC_CONFIG);

	val16 = FUNC1(pc, regoff);

	if (!(val16 & BCMA_CORE_PCI_SPROM_L23READY_EXIT_NOPERST)) {
		val16 |= BCMA_CORE_PCI_SPROM_L23READY_EXIT_NOPERST;
		FUNC2(pc, regoff, val16);
	}
}