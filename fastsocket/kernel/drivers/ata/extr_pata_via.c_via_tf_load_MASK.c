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
struct via_port {scalar_t__ cached_device; } ;
struct ata_taskfile {unsigned int flags; scalar_t__ ctl; scalar_t__ device; scalar_t__ hob_feature; scalar_t__ hob_nsect; scalar_t__ hob_lbal; scalar_t__ hob_lbam; scalar_t__ hob_lbah; scalar_t__ feature; scalar_t__ nsect; scalar_t__ lbal; scalar_t__ lbam; scalar_t__ lbah; } ;
struct ata_ioports {int /*<<< orphan*/  lbah_addr; int /*<<< orphan*/  lbam_addr; int /*<<< orphan*/  lbal_addr; int /*<<< orphan*/  nsect_addr; int /*<<< orphan*/  feature_addr; int /*<<< orphan*/  ctl_addr; int /*<<< orphan*/  device_addr; } ;
struct ata_port {scalar_t__ last_ctl; struct via_port* private_data; struct ata_ioports ioaddr; } ;

/* Variables and functions */
 int ATA_TFLAG_DEVICE ; 
 unsigned int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_LBA48 ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap, const struct ata_taskfile *tf)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;
	struct via_port *vp = ap->private_data;
	unsigned int is_addr = tf->flags & ATA_TFLAG_ISADDR;
	int newctl = 0;

	if (tf->ctl != ap->last_ctl) {
		FUNC3(tf->ctl, ioaddr->ctl_addr);
		ap->last_ctl = tf->ctl;
		FUNC2(ap);
		newctl = 1;
	}

	if (tf->flags & ATA_TFLAG_DEVICE) {
		FUNC3(tf->device, ioaddr->device_addr);
		vp->cached_device = tf->device;
	} else if (newctl)
		FUNC3(vp->cached_device, ioaddr->device_addr);

	if (is_addr && (tf->flags & ATA_TFLAG_LBA48)) {
		FUNC1(!ioaddr->ctl_addr);
		FUNC3(tf->hob_feature, ioaddr->feature_addr);
		FUNC3(tf->hob_nsect, ioaddr->nsect_addr);
		FUNC3(tf->hob_lbal, ioaddr->lbal_addr);
		FUNC3(tf->hob_lbam, ioaddr->lbam_addr);
		FUNC3(tf->hob_lbah, ioaddr->lbah_addr);
		FUNC0("hob: feat 0x%X nsect 0x%X, lba 0x%X 0x%X 0x%X\n",
			tf->hob_feature,
			tf->hob_nsect,
			tf->hob_lbal,
			tf->hob_lbam,
			tf->hob_lbah);
	}

	if (is_addr) {
		FUNC3(tf->feature, ioaddr->feature_addr);
		FUNC3(tf->nsect, ioaddr->nsect_addr);
		FUNC3(tf->lbal, ioaddr->lbal_addr);
		FUNC3(tf->lbam, ioaddr->lbam_addr);
		FUNC3(tf->lbah, ioaddr->lbah_addr);
		FUNC0("feat 0x%X nsect 0x%X lba 0x%X 0x%X 0x%X\n",
			tf->feature,
			tf->nsect,
			tf->lbal,
			tf->lbam,
			tf->lbah);
	}

	FUNC2(ap);
}