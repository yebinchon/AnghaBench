#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nents; int /*<<< orphan*/  sgl; } ;
struct scsi_data_buffer {TYPE_1__ table; } ;
struct scsi_cmnd {TYPE_2__* request; struct scsi_data_buffer* prot_sdb; struct scsi_data_buffer sdb; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_8__ {struct scsi_data_buffer* special; struct TYPE_8__* next_rq; } ;

/* Variables and functions */
 int BLKPREP_DEFER ; 
 int BLKPREP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct scsi_data_buffer* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct scsi_data_buffer*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,struct scsi_data_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  scsi_sdb_cache ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(struct scsi_cmnd *cmd, gfp_t gfp_mask)
{
	int error = FUNC7(cmd->request, &cmd->sdb, gfp_mask);
	if (error)
		goto err_exit;

	if (FUNC1(cmd->request)) {
		struct scsi_data_buffer *bidi_sdb = FUNC5(
			scsi_sdb_cache, GFP_ATOMIC);
		if (!bidi_sdb) {
			error = BLKPREP_DEFER;
			goto err_exit;
		}

		cmd->request->next_rq->special = bidi_sdb;
		error = FUNC7(cmd->request->next_rq, bidi_sdb,
								    GFP_ATOMIC);
		if (error)
			goto err_exit;
	}

	if (FUNC2(cmd->request)) {
		struct scsi_data_buffer *prot_sdb = cmd->prot_sdb;
		int ivecs, count;

		FUNC0(prot_sdb == NULL);
		ivecs = FUNC3(cmd->request);

		if (FUNC6(prot_sdb, ivecs, gfp_mask)) {
			error = BLKPREP_DEFER;
			goto err_exit;
		}

		count = FUNC4(cmd->request,
						prot_sdb->table.sgl);
		FUNC0(FUNC10(count > ivecs));

		cmd->prot_sdb = prot_sdb;
		cmd->prot_sdb->table.nents = count;
	}

	return BLKPREP_OK ;

err_exit:
	FUNC9(cmd);
	cmd->request->special = NULL;
	FUNC8(cmd);
	return error;
}