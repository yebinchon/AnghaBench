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
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	int mscreg = 0x50 + 4 * ap->port_no;
	u8 bwsr_stat, msc_stat;

	FUNC1(pdev, 0x6A, &bwsr_stat);
	FUNC1(pdev, mscreg, &msc_stat);
	if (bwsr_stat & (1 << ap->port_no))
		FUNC2(pdev, mscreg, msc_stat | 0x30);
	FUNC0(qc);
}