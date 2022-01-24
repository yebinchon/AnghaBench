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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct hpt_info {scalar_t__ chip_type; } ;
struct TYPE_3__ {scalar_t__ select_data; scalar_t__ channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 scalar_t__ ATA_CBL_PATA40 ; 
 scalar_t__ ATA_CBL_PATA80 ; 
 scalar_t__ HPT370 ; 
 scalar_t__ HPT374 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct hpt_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC7(ide_hwif_t *hwif)
{
	struct pci_dev	*dev	= FUNC6(hwif->dev);
	struct hpt_info *info	= FUNC1(hwif->dev);
	u8 chip_type		= info->chip_type;
	u8 scr1 = 0, ata66	= hwif->channel ? 0x01 : 0x02;

	/*
	 * The HPT37x uses the CBLID pins as outputs for MA15/MA16
	 * address lines to access an external EEPROM.  To read valid
	 * cable detect state the pins must be enabled as inputs.
	 */
	if (chip_type == HPT374 && (FUNC0(dev->devfn) & 1)) {
		/*
		 * HPT374 PCI function 1
		 * - set bit 15 of reg 0x52 to enable TCBLID as input
		 * - set bit 15 of reg 0x56 to enable FCBLID as input
		 */
		u8  mcr_addr = hwif->select_data + 2;
		u16 mcr;

		FUNC3(dev, mcr_addr, &mcr);
		FUNC5(dev, mcr_addr, (mcr | 0x8000));
		/* now read cable id register */
		FUNC2(dev, 0x5a, &scr1);
		FUNC5(dev, mcr_addr, mcr);
	} else if (chip_type >= HPT370) {
		/*
		 * HPT370/372 and 374 pcifn 0
		 * - clear bit 0 of reg 0x5b to enable P/SCBLID as inputs
		 */
		u8 scr2 = 0;

		FUNC2(dev, 0x5b, &scr2);
		FUNC4(dev, 0x5b, (scr2 & ~1));
		/* now read cable id register */
		FUNC2(dev, 0x5a, &scr1);
		FUNC4(dev, 0x5b,  scr2);
	} else
		FUNC2(dev, 0x5a, &scr1);

	return (scr1 & ata66) ? ATA_CBL_PATA40 : ATA_CBL_PATA80;
}