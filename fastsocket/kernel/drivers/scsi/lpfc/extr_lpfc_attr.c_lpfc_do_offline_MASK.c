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
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_sli_ring {int /*<<< orphan*/  txcmplq; } ;
struct lpfc_sli {int num_rings; struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {struct lpfc_sli sli; TYPE_1__* pport; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {int fc_flag; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int FC_OFFLINE_MODE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_EVT_OFFLINE_PREP ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct lpfc_hba*,int*,struct completion*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct completion*) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_hba *phba, uint32_t type)
{
	struct completion online_compl;
	struct lpfc_sli_ring *pring;
	struct lpfc_sli *psli;
	int status = 0;
	int cnt = 0;
	int i;
	int rc;

	if (phba->pport->fc_flag & FC_OFFLINE_MODE)
		return 0;

	FUNC0(&online_compl);
	rc = FUNC3(phba, &status, &online_compl,
			      LPFC_EVT_OFFLINE_PREP);
	if (rc == 0)
		return -ENOMEM;

	FUNC5(&online_compl);

	if (status != 0)
		return -EIO;

	psli = &phba->sli;

	/* Wait a little for things to settle down, but not
	 * long enough for dev loss timeout to expire.
	 */
	for (i = 0; i < psli->num_rings; i++) {
		pring = &psli->ring[i];
		while (!FUNC1(&pring->txcmplq)) {
			FUNC4(10);
			if (cnt++ > 500) {  /* 5 secs */
				FUNC2(phba,
					KERN_WARNING, LOG_INIT,
					"0466 Outstanding IO when "
					"bringing Adapter offline\n");
				break;
			}
		}
	}

	FUNC0(&online_compl);
	rc = FUNC3(phba, &status, &online_compl, type);
	if (rc == 0)
		return -ENOMEM;

	FUNC5(&online_compl);

	if (status != 0)
		return -EIO;

	return 0;
}