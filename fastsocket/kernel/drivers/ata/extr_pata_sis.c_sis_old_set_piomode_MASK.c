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
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 int FUNC2 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*,struct ata_device*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *pdev	= FUNC4(ap->host->dev);
	int port = FUNC2(adev);
	u8 t1, t2;
	int speed = adev->pio_mode - XFER_PIO_0;

	const u8 active[]   = { 0x00, 0x07, 0x04, 0x03, 0x01 };
	const u8 recovery[] = { 0x00, 0x06, 0x04, 0x03, 0x03 };

	FUNC3(ap, adev);

	FUNC0(pdev, port, &t1);
	FUNC0(pdev, port + 1, &t2);

	t1 &= ~0x0F;	/* Clear active/recovery timings */
	t2 &= ~0x07;

	t1 |= active[speed];
	t2 |= recovery[speed];

	FUNC1(pdev, port, t1);
	FUNC1(pdev, port + 1, t2);
}