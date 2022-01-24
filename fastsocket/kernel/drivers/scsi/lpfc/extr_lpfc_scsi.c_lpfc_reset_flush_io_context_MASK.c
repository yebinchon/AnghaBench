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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct lpfc_vport {int cfg_devloss_tmo; struct lpfc_hba* phba; } ;
struct TYPE_2__ {size_t fcp_ring; int /*<<< orphan*/ * ring; } ;
struct lpfc_hba {TYPE_1__ sli; } ;
typedef  int /*<<< orphan*/  lpfc_ctx_cmd ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int /*<<< orphan*/  LPFC_CTX_HOST ; 
 int /*<<< orphan*/  LPFC_CTX_LUN ; 
 int /*<<< orphan*/  LPFC_CTX_TGT ; 
 int SUCCESS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_vport *vport, uint16_t tgt_id,
			uint64_t lun_id, lpfc_ctx_cmd context)
{
	struct lpfc_hba   *phba = vport->phba;
	unsigned long later;
	int cnt;

	cnt = FUNC2(vport, tgt_id, lun_id, context);
	if (cnt)
		FUNC1(vport, &phba->sli.ring[phba->sli.fcp_ring],
				    tgt_id, lun_id, context);
	later = FUNC3(2 * vport->cfg_devloss_tmo * 1000) + jiffies;
	while (FUNC5(later, jiffies) && cnt) {
		FUNC4(FUNC3(20));
		cnt = FUNC2(vport, tgt_id, lun_id, context);
	}
	if (cnt) {
		FUNC0(vport, KERN_ERR, LOG_FCP,
			"0724 I/O flush failure for context %s : cnt x%x\n",
			((context == LPFC_CTX_LUN) ? "LUN" :
			 ((context == LPFC_CTX_TGT) ? "TGT" :
			  ((context == LPFC_CTX_HOST) ? "HOST" : "Unknown"))),
			cnt);
		return FAILED;
	}
	return SUCCESS;
}