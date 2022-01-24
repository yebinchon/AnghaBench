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
struct scsi_host_template {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  desc; } ;
struct TYPE_3__ {TYPE_2__ eh_info; } ;
struct ata_port {scalar_t__ cbl; int flags; TYPE_1__ link; int /*<<< orphan*/  udma_mask; int /*<<< orphan*/  mwdma_mask; int /*<<< orphan*/  pio_mask; TYPE_1__* slave_link; int /*<<< orphan*/  print_id; } ;
struct ata_host {int flags; int n_ports; struct ata_port** ports; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATA_CBL_NONE ; 
 scalar_t__ ATA_CBL_SATA ; 
 int ATA_FLAG_SATA ; 
 int ATA_HOST_STARTED ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  async_port_probe ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct ata_port*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ata_print_id ; 
 int FUNC8 (struct ata_host*,struct scsi_host_template*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

int FUNC13(struct ata_host *host, struct scsi_host_template *sht)
{
	int i, rc;

	/* host must have been started */
	if (!(host->flags & ATA_HOST_STARTED)) {
		FUNC10(KERN_ERR, host->dev,
			   "BUG: trying to register unstarted host\n");
		FUNC0(1);
		return -EINVAL;
	}

	/* Blow away unused ports.  This happens when LLD can't
	 * determine the exact number of ports to allocate at
	 * allocation time.
	 */
	for (i = host->n_ports; host->ports[i]; i++)
		FUNC11(host->ports[i]);

	/* give ports names and add SCSI hosts */
	for (i = 0; i < host->n_ports; i++)
		host->ports[i]->print_id = FUNC9(&ata_print_id);

	rc = FUNC8(host, sht);
	if (rc)
		return rc;

	/* associate with ACPI nodes */
	FUNC2(host);

	/* set cable, sata_spd_limit and report */
	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];
		unsigned long xfer_mask;

		/* set SATA cable type if still unset */
		if (ap->cbl == ATA_CBL_NONE && (ap->flags & ATA_FLAG_SATA))
			ap->cbl = ATA_CBL_SATA;

		/* init sata_spd_limit to the current value */
		FUNC12(&ap->link);
		if (ap->slave_link)
			FUNC12(ap->slave_link);

		/* print per-port info to dmesg */
		xfer_mask = FUNC5(ap->pio_mask, ap->mwdma_mask,
					      ap->udma_mask);

		if (!FUNC6(ap)) {
			FUNC7(ap, KERN_INFO,
					"%cATA max %s %s\n",
					(ap->flags & ATA_FLAG_SATA) ? 'S' : 'P',
					FUNC4(xfer_mask),
					ap->link.eh_info.desc);
			FUNC3(&ap->link.eh_info);
		} else
			FUNC7(ap, KERN_INFO, "DUMMY\n");
	}

	/* perform each probe asynchronously */
	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];
		FUNC1(async_port_probe, ap);
	}

	return 0;
}