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
typedef  unsigned int u8 ;
struct sg_io_hdr {int /*<<< orphan*/  cmd_len; int /*<<< orphan*/ * cmdp; } ;
struct nvme_ns {int dummy; } ;

/* Variables and functions */
 int BLK_MAX_CDB ; 
 int EFAULT ; 
 int EMSGSIZE ; 
#define  FORMAT_UNIT 153 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
#define  INQUIRY 152 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
#define  LOG_SENSE 151 
#define  MODE_SELECT 150 
#define  MODE_SELECT_10 149 
#define  MODE_SENSE 148 
#define  MODE_SENSE_10 147 
#define  READ_10 146 
#define  READ_12 145 
#define  READ_16 144 
#define  READ_6 143 
#define  READ_CAPACITY 142 
#define  REPORT_LUNS 141 
#define  REQUEST_SENSE 140 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_ASCQ_CAUSE_NOT_REPORTABLE ; 
 int /*<<< orphan*/  SCSI_ASC_ILLEGAL_COMMAND ; 
#define  SECURITY_PROTOCOL_IN 139 
#define  SECURITY_PROTOCOL_OUT 138 
#define  SERVICE_ACTION_IN 137 
#define  START_STOP 136 
#define  SYNCHRONIZE_CACHE 135 
#define  TEST_UNIT_READY 134 
#define  UNMAP 133 
#define  WRITE_10 132 
#define  WRITE_12 131 
#define  WRITE_16 130 
#define  WRITE_6 129 
#define  WRITE_BUFFER 128 
 scalar_t__ FUNC1 (unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sg_io_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC4 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC5 (struct nvme_ns*,struct sg_io_hdr*,int,unsigned int*) ; 
 int FUNC6 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC7 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC8 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC9 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC10 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC11 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC12 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC13 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC14 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC15 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC16 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 
 int FUNC17 (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ; 

__attribute__((used)) static int FUNC18(struct nvme_ns *ns, struct sg_io_hdr *hdr)
{
	u8 cmd[BLK_MAX_CDB];
	int retcode;
	unsigned int opcode;

	if (hdr->cmdp == NULL)
		return -EMSGSIZE;
	if (FUNC1(cmd, hdr->cmdp, hdr->cmd_len))
		return -EFAULT;

	opcode = cmd[0];

	switch (opcode) {
	case READ_6:
	case READ_10:
	case READ_12:
	case READ_16:
		retcode = FUNC5(ns, hdr, 0, cmd);
		break;
	case WRITE_6:
	case WRITE_10:
	case WRITE_12:
	case WRITE_16:
		retcode = FUNC5(ns, hdr, 1, cmd);
		break;
	case INQUIRY:
		retcode = FUNC4(ns, hdr, cmd);
		break;
	case LOG_SENSE:
		retcode = FUNC6(ns, hdr, cmd);
		break;
	case MODE_SELECT:
	case MODE_SELECT_10:
		retcode = FUNC7(ns, hdr, cmd);
		break;
	case MODE_SENSE:
	case MODE_SENSE_10:
		retcode = FUNC8(ns, hdr, cmd);
		break;
	case READ_CAPACITY:
		retcode = FUNC9(ns, hdr, cmd);
		break;
	case SERVICE_ACTION_IN:
		if (FUNC0(cmd))
			retcode = FUNC9(ns, hdr, cmd);
		else
			goto out;
		break;
	case REPORT_LUNS:
		retcode = FUNC10(ns, hdr, cmd);
		break;
	case REQUEST_SENSE:
		retcode = FUNC11(ns, hdr, cmd);
		break;
	case SECURITY_PROTOCOL_IN:
	case SECURITY_PROTOCOL_OUT:
		retcode = FUNC12(ns, hdr, cmd);
		break;
	case START_STOP:
		retcode = FUNC13(ns, hdr, cmd);
		break;
	case SYNCHRONIZE_CACHE:
		retcode = FUNC14(ns, hdr, cmd);
		break;
	case FORMAT_UNIT:
		retcode = FUNC3(ns, hdr, cmd);
		break;
	case TEST_UNIT_READY:
		retcode = FUNC15(ns, hdr, cmd);
		break;
	case WRITE_BUFFER:
		retcode = FUNC17(ns, hdr, cmd);
		break;
	case UNMAP:
		retcode = FUNC16(ns, hdr, cmd);
		break;
	default:
 out:
		retcode = FUNC2(hdr, SAM_STAT_CHECK_CONDITION,
				ILLEGAL_REQUEST, SCSI_ASC_ILLEGAL_COMMAND,
				SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
		break;
	}
	return retcode;
}