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
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;unsigned char* cmnd; int* sense_buffer; int result; TYPE_1__* device; } ;
struct ps3rom_private {struct scsi_cmnd* curr_cmd; struct ps3_storage_device* dev; } ;
struct ps3_storage_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int ILLEGAL_REQUEST ; 
#define  READ_10 129 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
#define  WRITE_10 128 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ps3_storage_device*,struct scsi_cmnd*) ; 
 int FUNC2 (struct ps3_storage_device*,struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ps3_storage_device*,struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 struct ps3rom_private* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 void FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC9(struct scsi_cmnd *cmd,
			       void (*done)(struct scsi_cmnd *))
{
	struct ps3rom_private *priv = FUNC5(cmd->device->host);
	struct ps3_storage_device *dev = priv->dev;
	unsigned char opcode;
	int res;

#ifdef DEBUG
	scsi_print_command(cmd);
#endif

	priv->curr_cmd = cmd;
	cmd->scsi_done = done;

	opcode = cmd->cmnd[0];
	/*
	 * While we can submit READ/WRITE SCSI commands as ATAPI commands,
	 * it's recommended for various reasons (performance, error handling,
	 * ...) to use lv1_storage_{read,write}() instead
	 */
	switch (opcode) {
	case READ_10:
		res = FUNC2(dev, cmd, FUNC6(cmd),
					  FUNC7(cmd));
		break;

	case WRITE_10:
		res = FUNC3(dev, cmd, FUNC6(cmd),
					   FUNC7(cmd));
		break;

	default:
		res = FUNC1(dev, cmd);
		break;
	}

	if (res) {
		FUNC0(cmd->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
		cmd->result = res;
		cmd->sense_buffer[0] = 0x70;
		cmd->sense_buffer[2] = ILLEGAL_REQUEST;
		priv->curr_cmd = NULL;
		cmd->scsi_done(cmd);
	}

	return 0;
}