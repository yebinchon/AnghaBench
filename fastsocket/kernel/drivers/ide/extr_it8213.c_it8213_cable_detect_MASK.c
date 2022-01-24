#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 int ATA_CBL_PATA40 ; 
 int ATA_CBL_PATA80 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC2(ide_hwif_t *hwif)
{
	struct pci_dev *dev = FUNC1(hwif->dev);
	u8 reg42h = 0;

	FUNC0(dev, 0x42, &reg42h);

	return (reg42h & 0x02) ? ATA_CBL_PATA40 : ATA_CBL_PATA80;
}