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
struct TYPE_2__ {struct ata_port* device; } ;
struct ata_port {int flags; scalar_t__ acpi_handle; TYPE_1__ link; } ;
struct ata_host {int n_ports; struct ata_port** ports; int /*<<< orphan*/  acpi_handle; int /*<<< orphan*/  dev; } ;
struct ata_device {int flags; scalar_t__ acpi_handle; TYPE_1__ link; } ;

/* Variables and functions */
 int ATA_FLAG_ACPI_SATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ata_acpi_ap_dock_ops ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  ata_acpi_dev_dock_ops ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ libata_noacpi ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,struct ata_port*) ; 

void FUNC6(struct ata_host *host)
{
	int i, j;

	if (!FUNC4(host->dev) || libata_noacpi)
		return;

	host->acpi_handle = FUNC0(host->dev);
	if (!host->acpi_handle)
		return;

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];

		if (host->ports[0]->flags & ATA_FLAG_ACPI_SATA)
			FUNC2(ap);
		else
			FUNC1(ap);

		if (ap->acpi_handle) {
			/* we might be on a docking station */
			FUNC5(ap->acpi_handle,
					     &ata_acpi_ap_dock_ops, ap);
		}

		for (j = 0; j < FUNC3(&ap->link); j++) {
			struct ata_device *dev = &ap->link.device[j];

			if (dev->acpi_handle) {
				/* we might be on a docking station */
				FUNC5(dev->acpi_handle,
					     &ata_acpi_dev_dock_ops, dev);
			}
		}
	}
}