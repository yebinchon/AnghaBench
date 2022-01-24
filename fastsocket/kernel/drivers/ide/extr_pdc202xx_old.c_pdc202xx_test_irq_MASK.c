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
struct TYPE_3__ {scalar_t__ channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (struct pci_dev*,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(ide_hwif_t *hwif)
{
	struct pci_dev *dev	= FUNC2(hwif->dev);
	unsigned long high_16	= FUNC1(dev, 4);
	u8 sc1d			= FUNC0(high_16 + 0x1d);

	if (hwif->channel) {
		/*
		 * bit 7: error, bit 6: interrupting,
		 * bit 5: FIFO full, bit 4: FIFO empty
		 */
		return ((sc1d & 0x50) == 0x40) ? 1 : 0;
	} else	{
		/*
		 * bit 3: error, bit 2: interrupting,
		 * bit 1: FIFO full, bit 0: FIFO empty
		 */
		return ((sc1d & 0x05) == 0x04) ? 1 : 0;
	}
}