#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ARTTIM2 ; 
 int ARTTIM23_INTR_CH1 ; 
 int CFR ; 
 int CFR_INTR_CH0 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	u8 dma_intr;
	int dma_mask = ap->port_no ? ARTTIM23_INTR_CH1 : CFR_INTR_CH0;
	int dma_reg = ap->port_no ? ARTTIM2 : CFR;

	FUNC0(qc);

	FUNC1(pdev, dma_reg, &dma_intr);
	FUNC2(pdev, dma_reg, dma_intr | dma_mask);
}