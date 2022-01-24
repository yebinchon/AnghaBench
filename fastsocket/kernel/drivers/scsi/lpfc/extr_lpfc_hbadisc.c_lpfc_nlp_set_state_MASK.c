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
struct lpfc_vport {int /*<<< orphan*/  fc_nodes; } ;
struct lpfc_nodelist {int nlp_state; int /*<<< orphan*/  nlp_listp; int /*<<< orphan*/  nlp_type; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  name2 ;
typedef  int /*<<< orphan*/  name1 ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_NODE ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_NODE ; 
 int /*<<< orphan*/  NLP_FC_NODE ; 
 int NLP_STE_NPR_NODE ; 
 int NLP_STE_UNMAPPED_NODE ; 
 int /*<<< orphan*/  NLP_TGT_NO_SCSIID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_nodelist*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC8 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
		   int state)
{
	struct Scsi_Host *shost = FUNC8(vport);
	int  old_state = ndlp->nlp_state;
	char name1[16], name2[16];

	FUNC7(vport, KERN_INFO, LOG_NODE,
			 "0904 NPort state transition x%06x, %s -> %s\n",
			 ndlp->nlp_DID,
			 FUNC6(name1, sizeof(name1), old_state),
			 FUNC6(name2, sizeof(name2), state));

	FUNC3(vport, LPFC_DISC_TRC_NODE,
		"node statechg    did:x%x old:%d ste:%d",
		ndlp->nlp_DID, old_state, state);

	if (old_state == NLP_STE_NPR_NODE &&
	    state != NLP_STE_NPR_NODE)
		FUNC2(vport, ndlp);
	if (old_state == NLP_STE_UNMAPPED_NODE) {
		ndlp->nlp_flag &= ~NLP_TGT_NO_SCSIID;
		ndlp->nlp_type &= ~NLP_FC_NODE;
	}

	if (FUNC1(&ndlp->nlp_listp)) {
		FUNC9(shost->host_lock);
		FUNC0(&ndlp->nlp_listp, &vport->fc_nodes);
		FUNC10(shost->host_lock);
	} else if (old_state)
		FUNC4(vport, old_state, -1);

	ndlp->nlp_state = state;
	FUNC4(vport, state, 1);
	FUNC5(vport, ndlp, old_state, state);
}