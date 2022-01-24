#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpfc_vport {int fc_unused_cnt; int fc_plogi_cnt; int fc_adisc_cnt; int fc_reglogin_cnt; int fc_prli_cnt; int fc_unmap_cnt; int fc_map_cnt; int fc_npr_cnt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
#define  NLP_STE_ADISC_ISSUE 135 
#define  NLP_STE_MAPPED_NODE 134 
#define  NLP_STE_NPR_NODE 133 
#define  NLP_STE_PLOGI_ISSUE 132 
#define  NLP_STE_PRLI_ISSUE 131 
#define  NLP_STE_REG_LOGIN_ISSUE 130 
#define  NLP_STE_UNMAPPED_NODE 129 
#define  NLP_STE_UNUSED_NODE 128 
 struct Scsi_Host* FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_vport *vport, int state, int count)
{
	struct Scsi_Host *shost = FUNC0(vport);

	FUNC1(shost->host_lock);
	switch (state) {
	case NLP_STE_UNUSED_NODE:
		vport->fc_unused_cnt += count;
		break;
	case NLP_STE_PLOGI_ISSUE:
		vport->fc_plogi_cnt += count;
		break;
	case NLP_STE_ADISC_ISSUE:
		vport->fc_adisc_cnt += count;
		break;
	case NLP_STE_REG_LOGIN_ISSUE:
		vport->fc_reglogin_cnt += count;
		break;
	case NLP_STE_PRLI_ISSUE:
		vport->fc_prli_cnt += count;
		break;
	case NLP_STE_UNMAPPED_NODE:
		vport->fc_unmap_cnt += count;
		break;
	case NLP_STE_MAPPED_NODE:
		vport->fc_map_cnt += count;
		break;
	case NLP_STE_NPR_NODE:
		vport->fc_npr_cnt += count;
		break;
	}
	FUNC2(shost->host_lock);
}