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
typedef  int u64 ;
struct scsi_cmnd {TYPE_1__* device; int /*<<< orphan*/  sense_buffer; TYPE_2__* request; } ;
struct TYPE_4__ {scalar_t__ cmd_type; } ;
struct TYPE_3__ {int sector_size; } ;

/* Variables and functions */
 scalar_t__ REQ_TYPE_FS ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (struct scsi_cmnd*) ; 
 int FUNC4 (struct scsi_cmnd*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static unsigned int FUNC6(struct scsi_cmnd *scmd)
{
	u64 start_lba = FUNC0(scmd->request);
	u64 end_lba = FUNC0(scmd->request) + (FUNC3(scmd) / 512);
	u64 bad_lba;
	int info_valid;
	/*
	 * resid is optional but mostly filled in.  When it's unused,
	 * its value is zero, so we assume the whole buffer transferred
	 */
	unsigned int transferred = FUNC3(scmd) - FUNC4(scmd);
	unsigned int good_bytes;

	if (scmd->request->cmd_type != REQ_TYPE_FS)
		return 0;

	info_valid = FUNC5(scmd->sense_buffer,
					     SCSI_SENSE_BUFFERSIZE,
					     &bad_lba);
	if (!info_valid)
		return 0;

	if (FUNC3(scmd) <= scmd->device->sector_size)
		return 0;

	if (scmd->device->sector_size < 512) {
		/* only legitimate sector_size here is 256 */
		start_lba <<= 1;
		end_lba <<= 1;
	} else {
		/* be careful ... don't want any overflows */
		u64 factor = scmd->device->sector_size / 512;
		FUNC1(start_lba, factor);
		FUNC1(end_lba, factor);
	}

	/* The bad lba was reported incorrectly, we have no idea where
	 * the error is.
	 */
	if (bad_lba < start_lba  || bad_lba >= end_lba)
		return 0;

	/* This computation should always be done in terms of
	 * the resolution of the device's medium.
	 */
	good_bytes = (bad_lba - start_lba) * scmd->device->sector_size;
	return FUNC2(good_bytes, transferred);
}