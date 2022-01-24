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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 int CTRL_IDE_IRQA ; 
 int CTRL_IDE_IRQB ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(ide_hwif_t *hwif)
{
	struct pci_dev *dev	= FUNC1(hwif->dev);
	u32 val, mask		= hwif->channel ? CTRL_IDE_IRQB : CTRL_IDE_IRQA;

	FUNC0(dev, 0x40, &val);

	return (val & mask) ? 1 : 0;
}