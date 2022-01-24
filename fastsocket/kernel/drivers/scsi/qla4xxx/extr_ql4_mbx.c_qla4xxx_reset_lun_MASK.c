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
typedef  scalar_t__ uint32_t ;
struct scsi_qla_host {int /*<<< orphan*/  host_no; } ;
struct scsi_lun {int dummy; } ;
struct ddb_entry {scalar_t__ fw_ddb_index; } ;
typedef  int /*<<< orphan*/  mbox_sts ;
typedef  int /*<<< orphan*/  mbox_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MBOX_CMD_LUN_RESET ; 
 int MBOX_REG_COUNT ; 
 scalar_t__ MBOX_STS_COMMAND_COMPLETE ; 
 scalar_t__ MBOX_STS_COMMAND_ERROR ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,int,int,scalar_t__*,scalar_t__*) ; 

int FUNC6(struct scsi_qla_host * ha, struct ddb_entry * ddb_entry,
		      int lun)
{
	uint32_t mbox_cmd[MBOX_REG_COUNT];
	uint32_t mbox_sts[MBOX_REG_COUNT];
	uint32_t scsi_lun[2];
	int status = QLA_SUCCESS;

	FUNC0(FUNC4("scsi%ld:%d:%d: lun reset issued\n", ha->host_no,
		      ddb_entry->fw_ddb_index, lun));

	/*
	 * Send lun reset command to ISP, so that the ISP will return all
	 * outstanding requests with RESET status
	 */
	FUNC3(&mbox_cmd, 0, sizeof(mbox_cmd));
	FUNC3(&mbox_sts, 0, sizeof(mbox_sts));
	FUNC2(lun, (struct scsi_lun *) scsi_lun);

	mbox_cmd[0] = MBOX_CMD_LUN_RESET;
	mbox_cmd[1] = ddb_entry->fw_ddb_index;
	/* FW expects LUN bytes 0-3 in Incoming Mailbox 2
	 * (LUN byte 0 is LSByte, byte 3 is MSByte) */
	mbox_cmd[2] = FUNC1(scsi_lun[0]);
	/* FW expects LUN bytes 4-7 in Incoming Mailbox 3
	 * (LUN byte 4 is LSByte, byte 7 is MSByte) */
	mbox_cmd[3] = FUNC1(scsi_lun[1]);
	mbox_cmd[5] = 0x01;	/* Immediate Command Enable */

	FUNC5(ha, MBOX_REG_COUNT, 1, &mbox_cmd[0], &mbox_sts[0]);
	if (mbox_sts[0] != MBOX_STS_COMMAND_COMPLETE &&
	    mbox_sts[0] != MBOX_STS_COMMAND_ERROR)
		status = QLA_ERROR;

	return status;
}