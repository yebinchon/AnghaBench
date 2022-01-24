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
typedef  int u64 ;
struct mtip_port {TYPE_2__* dd; scalar_t__ identify; int /*<<< orphan*/  identify_valid; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ATA_SECT_SIZE ; 
 int /*<<< orphan*/  PCI_REVISION_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,unsigned short*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct mtip_port *port)
{
	sector_t sectors;
	unsigned short revid;
	char cbuf[42];

	if (!port->identify_valid)
		return;

	FUNC3(cbuf, (char *)(port->identify+10), 21);
	FUNC0(&port->dd->pdev->dev,
		"Serial No.: %s\n", cbuf);

	FUNC3(cbuf, (char *)(port->identify+23), 9);
	FUNC0(&port->dd->pdev->dev,
		"Firmware Ver.: %s\n", cbuf);

	FUNC3(cbuf, (char *)(port->identify+27), 41);
	FUNC0(&port->dd->pdev->dev, "Model: %s\n", cbuf);

	if (FUNC1(port->dd, &sectors))
		FUNC0(&port->dd->pdev->dev,
			"Capacity: %llu sectors (%llu MB)\n",
			 (u64)sectors,
			 ((u64)sectors) * ATA_SECT_SIZE >> 20);

	FUNC2(port->dd->pdev, PCI_REVISION_ID, &revid);
	switch (revid & 0xFF) {
	case 0x1:
		FUNC3(cbuf, "A0", 3);
		break;
	case 0x3:
		FUNC3(cbuf, "A2", 3);
		break;
	default:
		FUNC3(cbuf, "?", 2);
		break;
	}
	FUNC0(&port->dd->pdev->dev,
		"Card Type: %s\n", cbuf);
}