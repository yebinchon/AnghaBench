#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {int dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_7__ {int recover_width; int command_width; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIIXP_IDE_PIO_MODE ; 
 int /*<<< orphan*/  ATIIXP_IDE_PIO_TIMING ; 
 int /*<<< orphan*/  atiixp_lock ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* pio_timing ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(ide_drive_t *drive, const u8 pio)
{
	struct pci_dev *dev = FUNC6(drive->hwif->dev);
	unsigned long flags;
	int timing_shift = (drive->dn ^ 1) * 8;
	u32 pio_timing_data;
	u16 pio_mode_data;

	FUNC4(&atiixp_lock, flags);

	FUNC1(dev, ATIIXP_IDE_PIO_MODE, &pio_mode_data);
	pio_mode_data &= ~(0x07 << (drive->dn * 4));
	pio_mode_data |= (pio << (drive->dn * 4));
	FUNC3(dev, ATIIXP_IDE_PIO_MODE, pio_mode_data);

	FUNC0(dev, ATIIXP_IDE_PIO_TIMING, &pio_timing_data);
	pio_timing_data &= ~(0xff << timing_shift);
	pio_timing_data |= (pio_timing[pio].recover_width << timing_shift) |
		 (pio_timing[pio].command_width << (timing_shift + 4));
	FUNC2(dev, ATIIXP_IDE_PIO_TIMING, pio_timing_data);

	FUNC5(&atiixp_lock, flags);
}