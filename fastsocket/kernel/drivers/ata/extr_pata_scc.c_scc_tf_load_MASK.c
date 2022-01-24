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
struct ata_taskfile {unsigned int flags; scalar_t__ ctl; scalar_t__ hob_feature; scalar_t__ hob_nsect; scalar_t__ hob_lbal; scalar_t__ hob_lbam; scalar_t__ hob_lbah; scalar_t__ feature; scalar_t__ nsect; scalar_t__ lbal; scalar_t__ lbam; scalar_t__ lbah; scalar_t__ device; } ;
struct ata_ioports {int /*<<< orphan*/  device_addr; int /*<<< orphan*/  lbah_addr; int /*<<< orphan*/  lbam_addr; int /*<<< orphan*/  lbal_addr; int /*<<< orphan*/  nsect_addr; int /*<<< orphan*/  feature_addr; int /*<<< orphan*/  ctl_addr; } ;
struct ata_port {scalar_t__ last_ctl; struct ata_ioports ioaddr; } ;

/* Variables and functions */
 int ATA_TFLAG_DEVICE ; 
 unsigned int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_LBA48 ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3 (struct ata_port *ap, const struct ata_taskfile *tf)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;
	unsigned int is_addr = tf->flags & ATA_TFLAG_ISADDR;

	if (tf->ctl != ap->last_ctl) {
		FUNC2(ioaddr->ctl_addr, tf->ctl);
		ap->last_ctl = tf->ctl;
		FUNC1(ap);
	}

	if (is_addr && (tf->flags & ATA_TFLAG_LBA48)) {
		FUNC2(ioaddr->feature_addr, tf->hob_feature);
		FUNC2(ioaddr->nsect_addr, tf->hob_nsect);
		FUNC2(ioaddr->lbal_addr, tf->hob_lbal);
		FUNC2(ioaddr->lbam_addr, tf->hob_lbam);
		FUNC2(ioaddr->lbah_addr, tf->hob_lbah);
		FUNC0("hob: feat 0x%X nsect 0x%X, lba 0x%X 0x%X 0x%X\n",
			tf->hob_feature,
			tf->hob_nsect,
			tf->hob_lbal,
			tf->hob_lbam,
			tf->hob_lbah);
	}

	if (is_addr) {
		FUNC2(ioaddr->feature_addr, tf->feature);
		FUNC2(ioaddr->nsect_addr, tf->nsect);
		FUNC2(ioaddr->lbal_addr, tf->lbal);
		FUNC2(ioaddr->lbam_addr, tf->lbam);
		FUNC2(ioaddr->lbah_addr, tf->lbah);
		FUNC0("feat 0x%X nsect 0x%X lba 0x%X 0x%X 0x%X\n",
			tf->feature,
			tf->nsect,
			tf->lbal,
			tf->lbam,
			tf->lbah);
	}

	if (tf->flags & ATA_TFLAG_DEVICE) {
		FUNC2(ioaddr->device_addr, tf->device);
		FUNC0("device 0x%X\n", tf->device);
	}

	FUNC1(ap);
}