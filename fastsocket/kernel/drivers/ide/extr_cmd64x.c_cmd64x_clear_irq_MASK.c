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
struct TYPE_4__ {scalar_t__ channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int ARTTIM23 ; 
 int ARTTIM23_INTR_CH1 ; 
 int CFR ; 
 int CFR_INTR_CH0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ide_drive_t *drive)
{
	ide_hwif_t *hwif	= drive->hwif;
	struct pci_dev *dev	= FUNC2(hwif->dev);
	int irq_reg		= hwif->channel ? ARTTIM23 : CFR;
	u8  irq_mask		= hwif->channel ? ARTTIM23_INTR_CH1 :
						  CFR_INTR_CH0;
	u8  irq_stat		= 0;

	(void) FUNC0(dev, irq_reg, &irq_stat);
	/* clear the interrupt bit */
	(void) FUNC1(dev, irq_reg, irq_stat | irq_mask);
}