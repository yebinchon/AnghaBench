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
struct pci_dev {int dummy; } ;
struct pci_bits {int member_0; unsigned int member_1; int member_2; int member_3; } ;
struct ata_port {size_t port_no; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct ata_link*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct pci_bits const*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ata_link *link, unsigned long deadline)
{
	static const struct pci_bits sis_enable_bits[] = {
		{ 0x4aU, 1U, 0x02UL, 0x02UL },	/* port 0 */
		{ 0x4aU, 1U, 0x04UL, 0x04UL },	/* port 1 */
	};

	struct ata_port *ap = link->ap;
	struct pci_dev *pdev = FUNC3(ap->host->dev);

	if (!FUNC1(pdev, &sis_enable_bits[ap->port_no]))
		return -ENOENT;

	/* Clear the FIFO settings. We can't enable the FIFO until
	   we know we are poking at a disk */
	FUNC2(pdev, 0x4B, 0);
	return FUNC0(link, deadline);
}