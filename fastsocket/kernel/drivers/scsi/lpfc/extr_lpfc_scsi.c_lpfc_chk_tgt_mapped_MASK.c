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
struct scsi_cmnd {TYPE_1__* device; } ;
struct lpfc_vport {int cfg_devloss_tmo; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;
struct TYPE_2__ {struct lpfc_rport_data* hostdata; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 scalar_t__ NLP_STE_MAPPED_NODE ; 
 int SUCCESS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct lpfc_rport_data*) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct lpfc_vport *vport, struct scsi_cmnd *cmnd)
{
	struct lpfc_rport_data *rdata = cmnd->device->hostdata;
	struct lpfc_nodelist *pnode;
	unsigned long later;

	if (!rdata) {
		FUNC1(vport, KERN_INFO, LOG_FCP,
			"0797 Tgt Map rport failure: rdata x%p\n", rdata);
		return FAILED;
	}
	pnode = rdata->pnode;
	/*
	 * If target is not in a MAPPED state, delay until
	 * target is rediscovered or devloss timeout expires.
	 */
	later = FUNC2(2 * vport->cfg_devloss_tmo * 1000) + jiffies;
	while (FUNC4(later, jiffies)) {
		if (!pnode || !FUNC0(pnode))
			return FAILED;
		if (pnode->nlp_state == NLP_STE_MAPPED_NODE)
			return SUCCESS;
		FUNC3(FUNC2(500));
		rdata = cmnd->device->hostdata;
		if (!rdata)
			return FAILED;
		pnode = rdata->pnode;
	}
	if (!pnode || !FUNC0(pnode) ||
	    (pnode->nlp_state != NLP_STE_MAPPED_NODE))
		return FAILED;
	return SUCCESS;
}