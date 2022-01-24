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
struct scsi_sense_hdr {int sense_key; int asc; int /*<<< orphan*/  ascq; int /*<<< orphan*/  response_code; } ;
struct scsi_disk {int dummy; } ;
struct scsi_cmnd {int result; unsigned char* cmnd; struct request* request; int /*<<< orphan*/  sense_buffer; } ;
struct request {int cmd_flags; int /*<<< orphan*/  rq_disk; } ;

/* Variables and functions */
#define  ABORTED_COMMAND 133 
 scalar_t__ DRIVER_SENSE ; 
#define  HARDWARE_ERROR 132 
#define  ILLEGAL_REQUEST 131 
 int /*<<< orphan*/  KERN_INFO ; 
#define  MEDIUM_ERROR 130 
#define  NO_SENSE 129 
 scalar_t__ READ ; 
#define  RECOVERED_ERROR 128 
 int REQ_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  SD_LBP_DISABLE ; 
 unsigned char UNMAP ; 
 unsigned char WRITE_SAME ; 
 unsigned char WRITE_SAME_16 ; 
 unsigned int FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct scsi_cmnd*) ; 
 int FUNC7 (struct scsi_cmnd*,struct scsi_sense_hdr*) ; 
 struct scsi_disk* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC11 (struct scsi_cmnd*) ; 
 int FUNC12 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*,unsigned int) ; 
 unsigned int FUNC14 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_cmnd*,unsigned int) ; 

__attribute__((used)) static int FUNC17(struct scsi_cmnd *SCpnt)
{
	int result = SCpnt->result;
	unsigned int good_bytes = result ? 0 : FUNC6(SCpnt);
	struct scsi_sense_hdr sshdr;
	struct scsi_disk *sdkp = FUNC8(SCpnt->request->rq_disk);
	struct request *req = SCpnt->request;
	int sense_valid = 0;
	int sense_deferred = 0;
	unsigned char op = SCpnt->cmnd[0];

	if (req->cmd_flags & REQ_DISCARD) {
		if (!result) {
			good_bytes = FUNC1(req);
			FUNC13(SCpnt, 0);
		} else {
			good_bytes = 0;
			FUNC13(SCpnt, FUNC1(req));
		}
	}

	if (result) {
		sense_valid = FUNC7(SCpnt, &sshdr);
		if (sense_valid)
			sense_deferred = FUNC12(&sshdr);
	}
#ifdef CONFIG_SCSI_LOGGING
	SCSI_LOG_HLCOMPLETE(1, scsi_print_result(SCpnt));
	if (sense_valid) {
		SCSI_LOG_HLCOMPLETE(1, scmd_printk(KERN_INFO, SCpnt,
						   "sd_done: sb[respc,sk,asc,"
						   "ascq]=%x,%x,%x,%x\n",
						   sshdr.response_code,
						   sshdr.sense_key, sshdr.asc,
						   sshdr.ascq));
	}
#endif
	if (FUNC2(result) != DRIVER_SENSE &&
	    (!sense_valid || sense_deferred))
		goto out;

	switch (sshdr.sense_key) {
	case HARDWARE_ERROR:
	case MEDIUM_ERROR:
		good_bytes = FUNC14(SCpnt);
		break;
	case RECOVERED_ERROR:
		good_bytes = FUNC6(SCpnt);
		break;
	case NO_SENSE:
		/* This indicates a false check condition, so ignore it.  An
		 * unknown amount of data was transferred so treat it as an
		 * error.
		 */
		FUNC10("sd", SCpnt);
		SCpnt->result = 0;
		FUNC3(SCpnt->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
		break;
	case ABORTED_COMMAND:
		if (sshdr.asc == 0x10)  /* DIF: Target detected corruption */
			good_bytes = FUNC14(SCpnt);
		break;
	case ILLEGAL_REQUEST:
		if (sshdr.asc == 0x10)  /* DIX: Host detected corruption */
			good_bytes = FUNC14(SCpnt);
		/* INVALID COMMAND OPCODE or INVALID FIELD IN CDB */
		if ((sshdr.asc == 0x20 || sshdr.asc == 0x24) &&
		    (op == UNMAP || op == WRITE_SAME_16 || op == WRITE_SAME))
			FUNC15(sdkp, SD_LBP_DISABLE);
		break;
	default:
		break;
	}
 out:
	if (FUNC4(SCpnt->request) == READ && FUNC11(SCpnt))
		FUNC16(SCpnt, good_bytes);

	return good_bytes;
}