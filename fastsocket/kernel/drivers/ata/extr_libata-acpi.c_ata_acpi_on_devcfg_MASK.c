#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; } ;
struct ata_eh_context {TYPE_3__ i; } ;
struct TYPE_5__ {struct ata_eh_context eh_context; } ;
struct ata_port {int flags; int pflags; TYPE_2__ link; } ;
struct ata_device {int flags; int /*<<< orphan*/ * acpi_handle; TYPE_1__* link; } ;
struct TYPE_4__ {struct ata_port* ap; } ;

/* Variables and functions */
 int ATA_DFLAG_ACPI_FAILED ; 
 int ATA_DFLAG_ACPI_PENDING ; 
 int ATA_EHI_DID_HARDRESET ; 
 int ATA_FLAG_ACPI_SATA ; 
 int ATA_PFLAG_FROZEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int FUNC0 (struct ata_device*,int*) ; 
 int FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ata_device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct ata_device *dev)
{
	struct ata_port *ap = dev->link->ap;
	struct ata_eh_context *ehc = &ap->link.eh_context;
	int acpi_sata = ap->flags & ATA_FLAG_ACPI_SATA;
	int nr_executed = 0;
	int rc;

	if (!dev->acpi_handle)
		return 0;

	/* do we need to do _GTF? */
	if (!(dev->flags & ATA_DFLAG_ACPI_PENDING) &&
	    !(acpi_sata && (ehc->i.flags & ATA_EHI_DID_HARDRESET)))
		return 0;

	/* do _SDD if SATA */
	if (acpi_sata) {
		rc = FUNC1(dev);
		if (rc)
			goto acpi_err;
	}

	/* do _GTF */
	rc = FUNC0(dev, &nr_executed);
	if (rc)
		goto acpi_err;

	dev->flags &= ~ATA_DFLAG_ACPI_PENDING;

	/* refresh IDENTIFY page if any _GTF command has been executed */
	if (nr_executed) {
		rc = FUNC3(dev, 0);
		if (rc < 0) {
			FUNC2(dev, KERN_ERR, "failed to IDENTIFY "
				       "after ACPI commands\n");
			return rc;
		}
	}

	return 0;

 acpi_err:
	/* ignore evaluation failure if we can continue safely */
	if (rc == -EINVAL && !nr_executed && !(ap->pflags & ATA_PFLAG_FROZEN))
		return 0;

	/* fail and let EH retry once more for unknown IO errors */
	if (!(dev->flags & ATA_DFLAG_ACPI_FAILED)) {
		dev->flags |= ATA_DFLAG_ACPI_FAILED;
		return rc;
	}

	FUNC2(dev, KERN_WARNING,
		       "ACPI: failed the second time, disabled\n");
	dev->acpi_handle = NULL;

	/* We can safely continue if no _GTF command has been executed
	 * and port is not frozen.
	 */
	if (!nr_executed && !(ap->pflags & ATA_PFLAG_FROZEN))
		return 0;

	return rc;
}