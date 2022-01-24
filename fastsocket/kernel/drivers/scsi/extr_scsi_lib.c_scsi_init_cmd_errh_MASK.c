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
struct scsi_cmnd {scalar_t__ cmd_len; int /*<<< orphan*/  cmnd; int /*<<< orphan*/  sense_buffer; scalar_t__ serial_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct scsi_cmnd *cmd)
{
	cmd->serial_number = 0;
	FUNC2(cmd, 0);
	FUNC0(cmd->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
	if (cmd->cmd_len == 0)
		cmd->cmd_len = FUNC1(cmd->cmnd);
}