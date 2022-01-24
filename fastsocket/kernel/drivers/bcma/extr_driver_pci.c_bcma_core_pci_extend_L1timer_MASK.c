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
typedef  int /*<<< orphan*/  u32 ;
struct bcma_drv_pci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CORE_PCI_ASPMTIMER_EXTEND ; 
 int /*<<< orphan*/  BCMA_CORE_PCI_DLLP_PMTHRESHREG ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_pci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct bcma_drv_pci *pc, bool extend)
{
	u32 w;

	w = FUNC0(pc, BCMA_CORE_PCI_DLLP_PMTHRESHREG);
	if (extend)
		w |= BCMA_CORE_PCI_ASPMTIMER_EXTEND;
	else
		w &= ~BCMA_CORE_PCI_ASPMTIMER_EXTEND;
	FUNC1(pc, BCMA_CORE_PCI_DLLP_PMTHRESHREG, w);
	FUNC0(pc, BCMA_CORE_PCI_DLLP_PMTHRESHREG);
}