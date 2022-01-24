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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct scsi_disk {scalar_t__ protection_type; scalar_t__ ATO; struct scsi_device* device; struct gendisk* disk; } ;
struct scsi_device {int /*<<< orphan*/  host; } ;
struct gendisk {TYPE_1__* integrity; } ;
struct TYPE_2__ {int name; int tag_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NOTICE ; 
 scalar_t__ SD_DIF_TYPE3_PROTECTION ; 
 int SHOST_DIX_GUARD_IP ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dif_type1_integrity_crc ; 
 int /*<<< orphan*/  dif_type1_integrity_ip ; 
 int /*<<< orphan*/  dif_type3_integrity_crc ; 
 int /*<<< orphan*/  dif_type3_integrity_ip ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_disk*,char*,int) ; 

void FUNC5(struct scsi_disk *sdkp)
{
	struct scsi_device *sdp = sdkp->device;
	struct gendisk *disk = sdkp->disk;
	u8 type = sdkp->protection_type;
	int dif, dix;

	dif = FUNC1(sdp->host, type);
	dix = FUNC2(sdp->host, type);

	if (!dix && FUNC2(sdp->host, 0)) {
		dif = 0; dix = 1;
	}

	if (!dix)
		return;

	/* Enable DMA of protection information */
	if (FUNC3(sdkp->device->host) & SHOST_DIX_GUARD_IP)
		if (type == SD_DIF_TYPE3_PROTECTION)
			FUNC0(disk, &dif_type3_integrity_ip);
		else
			FUNC0(disk, &dif_type1_integrity_ip);
	else
		if (type == SD_DIF_TYPE3_PROTECTION)
			FUNC0(disk, &dif_type3_integrity_crc);
		else
			FUNC0(disk, &dif_type1_integrity_crc);

	FUNC4(KERN_NOTICE, sdkp,
		  "Enabling DIX %s protection\n", disk->integrity->name);

	/* Signal to block layer that we support sector tagging */
	if (dif && type && sdkp->ATO) {
		if (type == SD_DIF_TYPE3_PROTECTION)
			disk->integrity->tag_size = sizeof(u16) + sizeof(u32);
		else
			disk->integrity->tag_size = sizeof(u16);

		FUNC4(KERN_NOTICE, sdkp, "DIF application tag size %u\n",
			  disk->integrity->tag_size);
	}
}