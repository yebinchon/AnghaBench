#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_sense {scalar_t__ sense_key; int asc; int ascq; } ;
struct request {unsigned int cmd_flags; int timeout; unsigned int resid_len; struct request_sense* sense; int /*<<< orphan*/  cmd_type; int /*<<< orphan*/  cmd; } ;
struct cdrom_info {int /*<<< orphan*/  disk; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; struct cdrom_info* driver_data; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MAX_CDB ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  IDE_DBG_PC ; 
 scalar_t__ NOT_READY ; 
 unsigned int REQ_FAILED ; 
 int /*<<< orphan*/  REQ_TYPE_ATA_PC ; 
 scalar_t__ UNIT_ATTENTION ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct request*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned char const,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(ide_drive_t *drive, const unsigned char *cmd,
		    int write, void *buffer, unsigned *bufflen,
		    struct request_sense *sense, int timeout,
		    unsigned int cmd_flags)
{
	struct cdrom_info *info = drive->driver_data;
	struct request_sense local_sense;
	int retries = 10;
	unsigned int flags = 0;

	if (!sense)
		sense = &local_sense;

	FUNC5(IDE_DBG_PC, "cmd[0]: 0x%x, write: 0x%x, timeout: %d, "
				  "cmd_flags: 0x%x",
				  cmd[0], write, timeout, cmd_flags);

	/* start of retry loop */
	do {
		struct request *rq;
		int error;

		rq = FUNC1(drive->queue, write, __GFP_WAIT);

		FUNC6(rq->cmd, cmd, BLK_MAX_CDB);
		rq->cmd_type = REQ_TYPE_ATA_PC;
		rq->sense = sense;
		rq->cmd_flags |= cmd_flags;
		rq->timeout = timeout;
		if (buffer) {
			error = FUNC3(drive->queue, rq, buffer,
						*bufflen, GFP_NOIO);
			if (error) {
				FUNC2(rq);
				return error;
			}
		}

		error = FUNC0(drive->queue, info->disk, rq, 0);

		if (buffer)
			*bufflen = rq->resid_len;

		flags = rq->cmd_flags;
		FUNC2(rq);

		/*
		 * FIXME: we should probably abort/retry or something in case of
		 * failure.
		 */
		if (flags & REQ_FAILED) {
			/*
			 * The request failed.  Retry if it was due to a unit
			 * attention status (usually means media was changed).
			 */
			struct request_sense *reqbuf = sense;

			if (reqbuf->sense_key == UNIT_ATTENTION)
				FUNC4(drive);
			else if (reqbuf->sense_key == NOT_READY &&
				 reqbuf->asc == 4 && reqbuf->ascq != 4) {
				/*
				 * The drive is in the process of loading
				 * a disk.  Retry, but wait a little to give
				 * the drive time to complete the load.
				 */
				FUNC7(2);
			} else {
				/* otherwise, don't retry */
				retries = 0;
			}
			--retries;
		}

		/* end of retry loop */
	} while ((flags & REQ_FAILED) && retries >= 0);

	/* return an error if the command failed */
	return (flags & REQ_FAILED) ? -EIO : 0;
}