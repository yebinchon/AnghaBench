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
struct TYPE_5__ {int flags; TYPE_1__* drive; } ;
struct pata_acpi {TYPE_2__ gtm; } ;
struct ata_timing {int /*<<< orphan*/  cycle; int /*<<< orphan*/  udma; } ;
struct ata_port {struct pata_acpi* private_data; } ;
struct ata_device {int devno; scalar_t__ dma_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 scalar_t__ XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,TYPE_2__*) ; 
 struct ata_timing* FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap, struct ata_device *adev)
{
	int unit = adev->devno;
	struct pata_acpi *acpi = ap->private_data;
	const struct ata_timing *t;

	if (!(acpi->gtm.flags & 0x10))
		unit = 0;

	/* Now stuff the nS values into the structure */
	t = FUNC2(adev->dma_mode);
	if (adev->dma_mode >= XFER_UDMA_0) {
		acpi->gtm.drive[unit].dma = t->udma;
		acpi->gtm.flags |= (1 << (2 * unit));
	} else {
		acpi->gtm.drive[unit].dma = t->cycle;
		acpi->gtm.flags &= ~(1 << (2 * unit));
	}
	FUNC1(ap, &acpi->gtm);
	/* See what mode we actually got */
	FUNC0(ap, &acpi->gtm);
}