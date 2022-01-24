#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTC ; 
 int IDE_D0_SHIFT ; 
 int IDE_D1_SHIFT ; 
 int IDE_DRV_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ide_drive_t *drive, u8 tim)
{
	struct pci_dev *pdev = FUNC2(drive->hwif->dev);
	int dshift = (drive->dn & 1) ? IDE_D1_SHIFT : IDE_D0_SHIFT;
	u32 dtc;

	FUNC0(pdev, DTC, &dtc);
	dtc &= ~(IDE_DRV_MASK << dshift);
	dtc |= tim << dshift;
	FUNC1(pdev, DTC, dtc);
}