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
struct scsi_cmnd {int result; int* sense_buffer; TYPE_2__* request; } ;
struct scsi_cd {int /*<<< orphan*/  disk; int /*<<< orphan*/  capacity; TYPE_1__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/ * bio; int /*<<< orphan*/  rq_disk; } ;
struct TYPE_3__ {int sector_size; } ;

/* Variables and functions */
#define  ILLEGAL_REQUEST 131 
#define  MEDIUM_ERROR 130 
#define  RECOVERED_ERROR 129 
#define  VOLUME_OVERFLOW 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 
 long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct scsi_cmnd*) ; 
 struct scsi_cd* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *SCpnt)
{
	int result = SCpnt->result;
	int this_count = FUNC5(SCpnt);
	int good_bytes = (result == 0 ? this_count : 0);
	int block_sectors = 0;
	long error_sector;
	struct scsi_cd *cd = FUNC6(SCpnt->request->rq_disk);

#ifdef DEBUG
	printk("sr.c done: %x\n", result);
#endif

	/*
	 * Handle MEDIUM ERRORs or VOLUME OVERFLOWs that indicate partial
	 * success.  Since this is a relatively rare error condition, no
	 * care is taken to avoid unnecessary additional work such as
	 * memcpy's that could be avoided.
	 */
	if (FUNC2(result) != 0 &&		/* An error occurred */
	    (SCpnt->sense_buffer[0] & 0x7f) == 0x70) { /* Sense current */
		switch (SCpnt->sense_buffer[2]) {
		case MEDIUM_ERROR:
		case VOLUME_OVERFLOW:
		case ILLEGAL_REQUEST:
			if (!(SCpnt->sense_buffer[0] & 0x90))
				break;
			error_sector = (SCpnt->sense_buffer[3] << 24) |
				(SCpnt->sense_buffer[4] << 16) |
				(SCpnt->sense_buffer[5] << 8) |
				SCpnt->sense_buffer[6];
			if (SCpnt->request->bio != NULL)
				block_sectors =
					FUNC0(SCpnt->request->bio);
			if (block_sectors < 4)
				block_sectors = 4;
			if (cd->device->sector_size == 2048)
				error_sector <<= 2;
			error_sector &= ~(block_sectors - 1);
			good_bytes = (error_sector -
				      FUNC1(SCpnt->request)) << 9;
			if (good_bytes < 0 || good_bytes >= this_count)
				good_bytes = 0;
			/*
			 * The SCSI specification allows for the value
			 * returned by READ CAPACITY to be up to 75 2K
			 * sectors past the last readable block.
			 * Therefore, if we hit a medium error within the
			 * last 75 2K sectors, we decrease the saved size
			 * value.
			 */
			if (error_sector < FUNC3(cd->disk) &&
			    cd->capacity - error_sector < 4 * 75)
				FUNC7(cd->disk, error_sector);
			break;

		case RECOVERED_ERROR:
			good_bytes = this_count;
			break;

		default:
			break;
		}
	}

	return good_bytes;
}