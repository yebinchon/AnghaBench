#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  sense_buffer; int /*<<< orphan*/  serial_number; } ;
struct TYPE_4__ {int /*<<< orphan*/  tcntxt; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct i2o_message {int /*<<< orphan*/ * body; TYPE_2__ u; } ;
struct i2o_controller {TYPE_3__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 struct scsi_cmnd* FUNC0 (struct i2o_controller*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct i2o_controller *c, u32 m,
			  struct i2o_message *msg)
{
	struct scsi_cmnd *cmd;
	u32 error;
	struct device *dev;

	cmd = FUNC0(c, FUNC1(msg->u.s.tcntxt));
	if (FUNC8(!cmd)) {
		FUNC5("NULL reply received!\n");
		return -1;
	}

	/*
	 *      Low byte is device status, next is adapter status,
	 *      (then one byte reserved), then request status.
	 */
	error = FUNC1(msg->body[0]);

	FUNC4("Completed %ld\n", cmd->serial_number);

	cmd->result = error & 0xff;
	/*
	 * if DeviceStatus is not SCSI_SUCCESS copy over the sense data and let
	 * the SCSI layer handle the error
	 */
	if (cmd->result)
		FUNC2(cmd->sense_buffer, &msg->body[3],
		       FUNC3(SCSI_SENSE_BUFFERSIZE, 40));

	/* only output error code if AdapterStatus is not HBA_SUCCESS */
	if ((error >> 8) & 0xff)
		FUNC5("SCSI error %08x\n", error);

	dev = &c->pdev->dev;

	FUNC6(cmd);

	cmd->scsi_done(cmd);

	return 1;
}