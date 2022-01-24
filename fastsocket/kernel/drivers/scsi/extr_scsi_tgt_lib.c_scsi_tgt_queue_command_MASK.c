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
typedef  int /*<<< orphan*/  u64 ;
struct scsi_tgt_cmd {int dummy; } ;
struct scsi_lun {int dummy; } ;
struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {struct scsi_tgt_cmd* end_io_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct scsi_tgt_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ ,struct scsi_lun*,int /*<<< orphan*/ ) ; 

int FUNC3(struct scsi_cmnd *cmd, u64 itn_id,
			   struct scsi_lun *scsilun, u64 tag)
{
	struct scsi_tgt_cmd *tcmd = cmd->request->end_io_data;
	int err;

	FUNC1(cmd->request, tcmd, itn_id, tag);
	err = FUNC2(cmd, itn_id, scsilun, tag);
	if (err)
		FUNC0(cmd);

	return err;
}