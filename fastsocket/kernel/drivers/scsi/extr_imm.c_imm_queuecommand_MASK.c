#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ phase; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int result; TYPE_1__ SCp; TYPE_2__* device; } ;
struct TYPE_8__ {int /*<<< orphan*/  imm_tq; struct scsi_cmnd* cur_cmd; int /*<<< orphan*/  jstart; scalar_t__ failed; } ;
typedef  TYPE_3__ imm_struct ;
struct TYPE_7__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int DID_ERROR ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd *cmd,
		void (*done)(struct scsi_cmnd *))
{
	imm_struct *dev = FUNC0(cmd->device->host);

	if (dev->cur_cmd) {
		FUNC2("IMM: bug in imm_queuecommand\n");
		return 0;
	}
	dev->failed = 0;
	dev->jstart = jiffies;
	dev->cur_cmd = cmd;
	cmd->scsi_done = done;
	cmd->result = DID_ERROR << 16;	/* default return code */
	cmd->SCp.phase = 0;	/* bus free */

	FUNC3(&dev->imm_tq, 0);

	FUNC1(dev);

	return 0;
}