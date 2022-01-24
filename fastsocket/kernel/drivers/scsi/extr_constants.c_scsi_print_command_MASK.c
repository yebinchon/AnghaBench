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
struct scsi_cmnd {int cmd_len; int /*<<< orphan*/ * cmnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 

void FUNC3(struct scsi_cmnd *cmd)
{
	int k;

	if (cmd->cmnd == NULL)
		return;

	FUNC2(KERN_INFO, cmd, "CDB: ");
	FUNC0(cmd->cmnd, cmd->cmd_len);

	/* print out all bytes in cdb */
	FUNC1(":");
	for (k = 0; k < cmd->cmd_len; ++k)
		FUNC1(" %02x", cmd->cmnd[k]);
	FUNC1("\n");
}