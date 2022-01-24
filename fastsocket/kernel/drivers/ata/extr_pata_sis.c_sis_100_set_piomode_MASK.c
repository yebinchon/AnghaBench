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
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int pio_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int XFER_PIO_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int const) ; 
 int FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,struct ata_device*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *pdev	= FUNC3(ap->host->dev);
	int port = FUNC1(adev);
	int speed = adev->pio_mode - XFER_PIO_0;

	const u8 actrec[] = { 0x00, 0x67, 0x44, 0x33, 0x31 };

	FUNC2(ap, adev);

	FUNC0(pdev, port, actrec[speed]);
}