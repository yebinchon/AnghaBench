#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int select_data; scalar_t__ channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ide_drive_t *drive)
{
	ide_hwif_t *hwif	= drive->hwif;
	struct pci_dev *dev	= FUNC3(hwif->dev);
	u8 mcr	= 0, mcr_addr	= hwif->select_data;
	u8 bwsr = 0, mask	= hwif->channel ? 0x02 : 0x01;

	FUNC1(dev, 0x6a, &bwsr);
	FUNC1(dev, mcr_addr, &mcr);
	if (bwsr & mask)
		FUNC2(dev, mcr_addr, mcr | 0x30);
	return FUNC0(drive);
}