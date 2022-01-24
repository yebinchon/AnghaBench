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
struct TYPE_6__ {scalar_t__ nents; } ;
struct scsi_data_buffer {TYPE_3__ table; } ;
struct scsi_cmnd {struct scsi_data_buffer* prot_sdb; TYPE_2__* request; struct scsi_data_buffer sdb; } ;
struct TYPE_5__ {TYPE_1__* next_rq; } ;
struct TYPE_4__ {struct scsi_data_buffer* special; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_data_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_data_buffer*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_data_buffer*) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  scsi_sdb_cache ; 

__attribute__((used)) static void FUNC5(struct scsi_cmnd *cmd, int do_bidi_check)
{

	if (cmd->sdb.table.nents)
		FUNC3(&cmd->sdb);

	FUNC1(&cmd->sdb, 0, sizeof(cmd->sdb));

	if (do_bidi_check && FUNC2(cmd)) {
		struct scsi_data_buffer *bidi_sdb =
			cmd->request->next_rq->special;
		FUNC3(bidi_sdb);
		FUNC0(scsi_sdb_cache, bidi_sdb);
		cmd->request->next_rq->special = NULL;
	}

	if (FUNC4(cmd))
		FUNC3(cmd->prot_sdb);
}