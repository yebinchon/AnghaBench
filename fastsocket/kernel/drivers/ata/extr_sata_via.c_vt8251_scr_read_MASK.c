#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {int device; } ;
struct ata_link {int pmp; TYPE_2__* ap; } ;
struct TYPE_4__ {int port_no; TYPE_1__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SCR_CONTROL 130 
#define  SCR_ERROR 129 
#define  SCR_STATUS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ata_link *link, unsigned int scr, u32 *val)
{
	static const u8 ipm_tbl[] = { 1, 2, 6, 0 };
	struct pci_dev *pdev = FUNC3(link->ap->host->dev);
	int slot = 2 * link->ap->port_no + link->pmp;
	u32 v = 0;
	u8 raw;

	switch (scr) {
	case SCR_STATUS:
		FUNC1(pdev, 0xA0 + slot, &raw);

		/* read the DET field, bit0 and 1 of the config byte */
		v |= raw & 0x03;

		/* read the SPD field, bit4 of the configure byte */
		if (raw & (1 << 4))
			v |= 0x02 << 4;
		else
			v |= 0x01 << 4;

		/* read the IPM field, bit2 and 3 of the config byte */
		v |= ipm_tbl[(raw >> 2) & 0x3];
		break;

	case SCR_ERROR:
		/* devices other than 5287 uses 0xA8 as base */
		FUNC0(pdev->device != 0x5287);
		FUNC2(pdev, 0xB0 + slot * 4, &v);
		break;

	case SCR_CONTROL:
		FUNC1(pdev, 0xA4 + slot, &raw);

		/* read the DET field, bit0 and bit1 */
		v |= ((raw & 0x02) << 1) | (raw & 0x01);

		/* read the IPM field, bit2 and bit3 */
		v |= ((raw >> 2) & 0x03) << 8;
		break;

	default:
		return -EINVAL;
	}

	*val = v;
	return 0;
}