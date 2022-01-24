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
struct TYPE_2__ {int /*<<< orphan*/  scsi_xri_cnt; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; int /*<<< orphan*/  scsi_buf_list_get_lock; int /*<<< orphan*/  scsi_buf_list_put_lock; int /*<<< orphan*/  lpfc_scsi_buf_list_put; int /*<<< orphan*/  lpfc_scsi_buf_list_get; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  post_sblist ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct lpfc_hba *phba)
{
	FUNC0(post_sblist);
	int num_posted, rc = 0;

	/* get all SCSI buffers need to repost to a local list */
	FUNC6(&phba->scsi_buf_list_get_lock);
	FUNC5(&phba->scsi_buf_list_put_lock);
	FUNC3(&phba->lpfc_scsi_buf_list_get, &post_sblist);
	FUNC2(&phba->lpfc_scsi_buf_list_put, &post_sblist);
	FUNC7(&phba->scsi_buf_list_put_lock);
	FUNC8(&phba->scsi_buf_list_get_lock);

	/* post the list of scsi buffer sgls to port if available */
	if (!FUNC1(&post_sblist)) {
		num_posted = FUNC4(phba, &post_sblist,
						phba->sli4_hba.scsi_xri_cnt);
		/* failed to post any scsi buffer, return error */
		if (num_posted == 0)
			rc = -EIO;
	}
	return rc;
}