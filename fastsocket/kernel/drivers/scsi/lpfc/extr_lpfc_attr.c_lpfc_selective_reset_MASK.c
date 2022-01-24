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
struct lpfc_hba {TYPE_1__* pport; int /*<<< orphan*/  cfg_enable_hba_reset; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {int fc_flag; } ;

/* Variables and functions */
 int EACCES ; 
 int EIO ; 
 int ENOMEM ; 
 int FC_OFFLINE_MODE ; 
 int /*<<< orphan*/  LPFC_EVT_OFFLINE ; 
 int /*<<< orphan*/  LPFC_EVT_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lpfc_hba*,int*,struct completion*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct completion*) ; 

int
FUNC4(struct lpfc_hba *phba)
{
	struct completion online_compl;
	int status = 0;
	int rc;

	if ((!phba->cfg_enable_hba_reset) ||
	    (phba->pport->fc_flag & FC_OFFLINE_MODE))
		return -EACCES;

	status = FUNC1(phba, LPFC_EVT_OFFLINE);

	if (status != 0)
		return status;

	FUNC0(&online_compl);
	rc = FUNC2(phba, &status, &online_compl,
			      LPFC_EVT_ONLINE);
	if (rc == 0)
		return -ENOMEM;

	FUNC3(&online_compl);

	if (status != 0)
		return -EIO;

	return 0;
}