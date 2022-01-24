#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ata_port {scalar_t__ acpi_handle; } ;
struct ata_host {int n_ports; struct ata_port** ports; } ;
struct ata_acpi_gtm {int dummy; } ;

/* Variables and functions */
 struct ata_acpi_gtm* FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,struct ata_acpi_gtm const*) ; 

void FUNC2(struct ata_host *host)
{
	int i;

	/* Restore initial _GTM values so that driver which attaches
	 * afterward can use them too.
	 */
	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];
		const struct ata_acpi_gtm *gtm = FUNC0(ap);

		if (ap->acpi_handle && gtm)
			FUNC1(ap, gtm);
	}
}