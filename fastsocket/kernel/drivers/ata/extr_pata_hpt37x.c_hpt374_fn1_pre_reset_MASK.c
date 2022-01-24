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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct pci_bits {int member_0; int member_1; int member_2; int member_3; } ;
struct ata_port {int port_no; int /*<<< orphan*/  cbl; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CBL_PATA40 ; 
 int /*<<< orphan*/  ATA_CBL_PATA80 ; 
 int ENOENT ; 
 int FUNC0 (struct ata_link*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct pci_bits const*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,unsigned int,int) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ata_link *link, unsigned long deadline)
{
	static const struct pci_bits hpt37x_enable_bits[] = {
		{ 0x50, 1, 0x04, 0x04 },
		{ 0x54, 1, 0x04, 0x04 }
	};
	u16 mcr3;
	u8 ata66;
	struct ata_port *ap = link->ap;
	struct pci_dev *pdev = FUNC6(ap->host->dev);
	unsigned int mcrbase = 0x50 + 4 * ap->port_no;

	if (!FUNC3(pdev, &hpt37x_enable_bits[ap->port_no]))
		return -ENOENT;

	/* Do the extra channel work */
	FUNC2(pdev, mcrbase + 2, &mcr3);
	/* Set bit 15 of 0x52 to enable TCBLID as input
	 */
	FUNC5(pdev, mcrbase + 2, mcr3 | 0x8000);
	FUNC1(pdev, 0x5A, &ata66);
	/* Reset TCBLID/FCBLID to output */
	FUNC5(pdev, mcrbase + 2, mcr3);

	if (ata66 & (2 >> ap->port_no))
		ap->cbl = ATA_CBL_PATA40;
	else
		ap->cbl = ATA_CBL_PATA80;

	/* Reset the state machine */
	FUNC4(pdev, 0x50 + 4 * ap->port_no, 0x37);
	FUNC7(100);

	return FUNC0(link, deadline);
}