#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_tgt_cmd {int /*<<< orphan*/  work; } ;
struct scsi_cmnd {TYPE_2__* request; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_4__ {struct scsi_tgt_cmd* end_io_data; } ;
struct TYPE_3__ {int (* eh_abort_handler ) (struct scsi_cmnd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC3(struct Scsi_Host *shost, struct scsi_cmnd *cmd)
{
	struct scsi_tgt_cmd *tcmd;
	int err;

	err = shost->hostt->eh_abort_handler(cmd);
	if (err)
		FUNC0("fail to abort %p\n", cmd);

	tcmd = cmd->request->end_io_data;
	FUNC1(&tcmd->work);
	return err;
}