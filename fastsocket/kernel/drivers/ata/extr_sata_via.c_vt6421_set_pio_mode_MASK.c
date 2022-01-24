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
struct ata_device {size_t pio_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATA_PIO_TIMING ; 
 size_t XFER_PIO_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int const) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *pdev = FUNC1(ap->host->dev);
	static const u8 pio_bits[] = { 0xA8, 0x65, 0x65, 0x31, 0x20 };
	FUNC0(pdev, PATA_PIO_TIMING, pio_bits[adev->pio_mode - XFER_PIO_0]);
}