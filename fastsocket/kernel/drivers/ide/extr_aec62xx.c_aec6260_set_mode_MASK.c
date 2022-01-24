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
struct pci_dev {int dummy; } ;
struct ide_host {struct chipset_bus_clock_list_entry* host_priv; } ;
struct chipset_bus_clock_list_entry {int dummy; } ;
struct TYPE_4__ {int channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int const,struct chipset_bus_clock_list_entry*) ; 
 int FUNC3 (int const,struct chipset_bus_clock_list_entry*) ; 
 struct ide_host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(ide_drive_t *drive, const u8 speed)
{
	ide_hwif_t *hwif	= drive->hwif;
	struct pci_dev *dev	= FUNC7(hwif->dev);
	struct ide_host *host	= FUNC4(dev);
	struct chipset_bus_clock_list_entry *bus_clock = host->host_priv;
	u8 unit			= drive->dn & 1;
	u8 tmp1 = 0, tmp2 = 0;
	u8 ultra = 0, drive_conf = 0, ultra_conf = 0;
	unsigned long flags;

	FUNC1(flags);
	/* high 4-bits: Active, low 4-bits: Recovery */
	FUNC5(dev, 0x40|drive->dn, &drive_conf);
	drive_conf = FUNC2(speed, bus_clock);
	FUNC6(dev, 0x40|drive->dn, drive_conf);

	FUNC5(dev, (0x44|hwif->channel), &ultra);
	tmp1 = ((0x00 << (4*unit)) | (ultra & ~(7 << (4*unit))));
	ultra_conf = FUNC3(speed, bus_clock);
	tmp2 = ((ultra_conf << (4*unit)) | (tmp1 & ~(7 << (4*unit))));
	FUNC6(dev, (0x44|hwif->channel), tmp2);
	FUNC0(flags);
}