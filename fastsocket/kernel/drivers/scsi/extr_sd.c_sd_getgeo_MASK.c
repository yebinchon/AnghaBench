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
struct scsi_disk {int capacity; struct scsi_device* device; } ;
struct scsi_device {struct Scsi_Host* host; } ;
struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* bios_param ) (struct scsi_device*,struct block_device*,int,int*) ;} ;

/* Variables and functions */
 struct scsi_disk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,struct block_device*,int,int*) ; 

__attribute__((used)) static int FUNC3(struct block_device *bdev, struct hd_geometry *geo)
{
	struct scsi_disk *sdkp = FUNC0(bdev->bd_disk);
	struct scsi_device *sdp = sdkp->device;
	struct Scsi_Host *host = sdp->host;
	int diskinfo[4];

	/* default to most commonly used values */
        diskinfo[0] = 0x40;	/* 1 << 6 */
       	diskinfo[1] = 0x20;	/* 1 << 5 */
       	diskinfo[2] = sdkp->capacity >> 11;
	
	/* override with calculated, extended default, or driver values */
	if (host->hostt->bios_param)
		host->hostt->bios_param(sdp, bdev, sdkp->capacity, diskinfo);
	else
		FUNC1(bdev, sdkp->capacity, diskinfo);

	geo->heads = diskinfo[0];
	geo->sectors = diskinfo[1];
	geo->cylinders = diskinfo[2];
	return 0;
}