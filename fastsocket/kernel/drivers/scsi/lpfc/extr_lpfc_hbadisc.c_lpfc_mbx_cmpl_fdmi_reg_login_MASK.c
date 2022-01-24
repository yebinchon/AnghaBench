#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int cfg_fdmi_on; int /*<<< orphan*/  fc_fdmitmo; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_type; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_rpi; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_8__ {int /*<<< orphan*/ * varWords; } ;
struct TYPE_9__ {TYPE_2__ un; } ;
struct TYPE_7__ {TYPE_3__ mb; } ;
struct TYPE_10__ {int /*<<< orphan*/ * context2; int /*<<< orphan*/ * context1; struct lpfc_vport* vport; TYPE_1__ u; } ;
typedef  TYPE_3__ MAILBOX_t ;
typedef  TYPE_4__ LPFC_MBOXQ_t ;

/* Variables and functions */
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  NLP_FABRIC ; 
 int /*<<< orphan*/  NLP_RPI_REGISTERED ; 
 int /*<<< orphan*/  NLP_STE_UNMAPPED_NODE ; 
 int /*<<< orphan*/  SLI_MGMT_DHBA ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

void
FUNC8(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	MAILBOX_t *mb = &pmb->u.mb;
	struct lpfc_dmabuf   *mp = (struct lpfc_dmabuf *) (pmb->context1);
	struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) pmb->context2;
	struct lpfc_vport    *vport = pmb->vport;

	pmb->context1 = NULL;
	pmb->context2 = NULL;

	if (phba->sli_rev < LPFC_SLI_REV4)
		ndlp->nlp_rpi = mb->un.varWords[0];
	ndlp->nlp_flag |= NLP_RPI_REGISTERED;
	ndlp->nlp_type |= NLP_FABRIC;
	FUNC4(vport, ndlp, NLP_STE_UNMAPPED_NODE);

	/*
	 * Start issuing Fabric-Device Management Interface (FDMI) command to
	 * 0xfffffa (FDMI well known port) or Delay issuing FDMI command if
	 * fdmi-on=2 (supporting RPA/hostnmae)
	 */

	if (vport->cfg_fdmi_on == 1)
		FUNC1(vport, ndlp, SLI_MGMT_DHBA);
	else
		FUNC6(&vport->fc_fdmitmo,
			  jiffies + FUNC7(1000 * 60));

	/* decrement the node reference count held for this callback
	 * function.
	 */
	FUNC3(ndlp);
	FUNC2(phba, mp->virt, mp->phys);
	FUNC0(mp);
	FUNC5(pmb, phba->mbox_mem_pool);

	return;
}