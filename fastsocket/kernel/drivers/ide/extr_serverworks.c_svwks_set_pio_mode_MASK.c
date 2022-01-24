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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {size_t dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(ide_drive_t *drive, const u8 pio)
{
	static const u8 pio_modes[] = { 0x5d, 0x47, 0x34, 0x22, 0x20 };
	static const u8 drive_pci[] = { 0x41, 0x40, 0x43, 0x42 };

	struct pci_dev *dev = FUNC4(drive->hwif->dev);

	FUNC1(dev, drive_pci[drive->dn], pio_modes[pio]);

	if (FUNC3(dev)) {
		u16 csb_pio = 0;

		FUNC0(dev, 0x4a, &csb_pio);

		csb_pio &= ~(0x0f << (4 * drive->dn));
		csb_pio |= (pio << (4 * drive->dn));

		FUNC2(dev, 0x4a, csb_pio);
	}
}