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
struct scsi_tgt_cmd {int /*<<< orphan*/  work; int /*<<< orphan*/  tag; int /*<<< orphan*/  itn_id; } ;
struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {struct scsi_tgt_cmd* end_io_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_tgtd ; 

__attribute__((used)) static void FUNC5(struct scsi_cmnd *cmd)
{
	struct scsi_tgt_cmd *tcmd = cmd->request->end_io_data;

	FUNC0("cmd %p %u\n", cmd, FUNC2(cmd->request));

	FUNC4(cmd, tcmd->itn_id, tcmd->tag);

	FUNC3(cmd);

	FUNC1(scsi_tgtd, &tcmd->work);
}