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
struct request_sense {int sense_key; int asc; } ;
struct request {int cmd_flags; int /*<<< orphan*/ * cmd; } ;
struct TYPE_4__ {struct request_sense sense_data; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPCMD_START_STOP_UNIT ; 
 int /*<<< orphan*/  IDE_DBG_SENSE ; 
#define  ILLEGAL_REQUEST 132 
#define  NOT_READY 131 
#define  NO_SENSE 130 
#define  RECOVERED_ERROR 129 
 int REQ_QUIET ; 
#define  UNIT_ATTENTION 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(ide_drive_t *drive, struct request *rq)
{
	struct request_sense *sense = &drive->sense_data;
	int log = 0;

	if (!sense || !rq || (rq->cmd_flags & REQ_QUIET))
		return 0;

	FUNC1(IDE_DBG_SENSE, "sense_key: 0x%x", sense->sense_key);

	switch (sense->sense_key) {
	case NO_SENSE:
	case RECOVERED_ERROR:
		break;
	case NOT_READY:
		/*
		 * don't care about tray state messages for e.g. capacity
		 * commands or in-progress or becoming ready
		 */
		if (sense->asc == 0x3a || sense->asc == 0x04)
			break;
		log = 1;
		break;
	case ILLEGAL_REQUEST:
		/*
		 * don't log START_STOP unit with LoEj set, since we cannot
		 * reliably check if drive can auto-close
		 */
		if (rq->cmd[0] == GPCMD_START_STOP_UNIT && sense->asc == 0x24)
			break;
		log = 1;
		break;
	case UNIT_ATTENTION:
		/*
		 * Make good and sure we've seen this potential media change.
		 * Some drives (i.e. Creative) fail to present the correct sense
		 * key in the error register.
		 */
		FUNC0(drive);
		break;
	default:
		log = 1;
		break;
	}
	return log;
}