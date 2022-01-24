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
typedef  int u8 ;
struct scsi_cmnd {int* cmnd; int result; } ;
struct ata_scsi_args {void (* done ) (struct scsi_cmnd*) ;struct scsi_cmnd* cmd; int /*<<< orphan*/  id; struct ata_device* dev; } ;
struct ata_device {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int DRIVER_SENSE ; 
#define  FORMAT_UNIT 143 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
#define  INQUIRY 142 
#define  MODE_SELECT 141 
#define  MODE_SELECT_10 140 
#define  MODE_SENSE 139 
#define  MODE_SENSE_10 138 
#define  READ_CAPACITY 137 
#define  REPORT_LUNS 136 
#define  REQUEST_SENSE 135 
#define  REZERO_UNIT 134 
 int const SAI_READ_CAPACITY_16 ; 
#define  SEEK_10 133 
#define  SEEK_6 132 
#define  SEND_DIAGNOSTIC 131 
#define  SERVICE_ACTION_IN 130 
#define  SYNCHRONIZE_CACHE 129 
#define  TEST_UNIT_READY 128 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_scsi_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ata_scsiop_inq_00 ; 
 int /*<<< orphan*/  ata_scsiop_inq_80 ; 
 int /*<<< orphan*/  ata_scsiop_inq_83 ; 
 int /*<<< orphan*/  ata_scsiop_inq_89 ; 
 int /*<<< orphan*/  ata_scsiop_inq_b0 ; 
 int /*<<< orphan*/  ata_scsiop_inq_b1 ; 
 int /*<<< orphan*/  ata_scsiop_inq_b2 ; 
 int /*<<< orphan*/  ata_scsiop_inq_std ; 
 int /*<<< orphan*/  ata_scsiop_mode_sense ; 
 int /*<<< orphan*/  ata_scsiop_noop ; 
 int /*<<< orphan*/  ata_scsiop_read_cap ; 
 int /*<<< orphan*/  ata_scsiop_report_luns ; 

void FUNC3(struct ata_device *dev, struct scsi_cmnd *cmd,
		      void (*done)(struct scsi_cmnd *))
{
	struct ata_scsi_args args;
	const u8 *scsicmd = cmd->cmnd;
	u8 tmp8;

	args.dev = dev;
	args.id = dev->id;
	args.cmd = cmd;
	args.done = done;

	switch(scsicmd[0]) {
	/* TODO: worth improving? */
	case FORMAT_UNIT:
		FUNC0(cmd, done);
		break;

	case INQUIRY:
		if (scsicmd[1] & 2)	           /* is CmdDt set?  */
			FUNC0(cmd, done);
		else if ((scsicmd[1] & 1) == 0)    /* is EVPD clear? */
			FUNC1(&args, ata_scsiop_inq_std);
		else switch (scsicmd[2]) {
		case 0x00:
			FUNC1(&args, ata_scsiop_inq_00);
			break;
		case 0x80:
			FUNC1(&args, ata_scsiop_inq_80);
			break;
		case 0x83:
			FUNC1(&args, ata_scsiop_inq_83);
			break;
		case 0x89:
			FUNC1(&args, ata_scsiop_inq_89);
			break;
		case 0xb0:
			FUNC1(&args, ata_scsiop_inq_b0);
			break;
		case 0xb1:
			FUNC1(&args, ata_scsiop_inq_b1);
			break;
		case 0xb2:
			FUNC1(&args, ata_scsiop_inq_b2);
			break;
		default:
			FUNC0(cmd, done);
			break;
		}
		break;

	case MODE_SENSE:
	case MODE_SENSE_10:
		FUNC1(&args, ata_scsiop_mode_sense);
		break;

	case MODE_SELECT:	/* unconditionally return */
	case MODE_SELECT_10:	/* bad-field-in-cdb */
		FUNC0(cmd, done);
		break;

	case READ_CAPACITY:
		FUNC1(&args, ata_scsiop_read_cap);
		break;

	case SERVICE_ACTION_IN:
		if ((scsicmd[1] & 0x1f) == SAI_READ_CAPACITY_16)
			FUNC1(&args, ata_scsiop_read_cap);
		else
			FUNC0(cmd, done);
		break;

	case REPORT_LUNS:
		FUNC1(&args, ata_scsiop_report_luns);
		break;

	case REQUEST_SENSE:
		FUNC2(cmd, 0, 0, 0);
		cmd->result = (DRIVER_SENSE << 24);
		done(cmd);
		break;

	/* if we reach this, then writeback caching is disabled,
	 * turning this into a no-op.
	 */
	case SYNCHRONIZE_CACHE:
		/* fall through */

	/* no-op's, complete with success */
	case REZERO_UNIT:
	case SEEK_6:
	case SEEK_10:
	case TEST_UNIT_READY:
		FUNC1(&args, ata_scsiop_noop);
		break;

	case SEND_DIAGNOSTIC:
		tmp8 = scsicmd[1] & ~(1 << 3);
		if ((tmp8 == 0x4) && (!scsicmd[3]) && (!scsicmd[4]))
			FUNC1(&args, ata_scsiop_noop);
		else
			FUNC0(cmd, done);
		break;

	/* all other commands */
	default:
		FUNC2(cmd, ILLEGAL_REQUEST, 0x20, 0x0);
		/* "Invalid command operation code" */
		done(cmd);
		break;
	}
}