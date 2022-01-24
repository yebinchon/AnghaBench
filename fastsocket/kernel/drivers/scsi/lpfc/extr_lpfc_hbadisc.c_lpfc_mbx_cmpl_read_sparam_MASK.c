#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct serv_parm {int dummy; } ;
struct lpfc_vport {scalar_t__ port_type; int /*<<< orphan*/  fc_portname; int /*<<< orphan*/  fc_nodename; int /*<<< orphan*/  fc_sparam; int /*<<< orphan*/  port_state; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  wwnn; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; scalar_t__ virt; } ;
struct TYPE_7__ {scalar_t__ mbxStatus; } ;
struct TYPE_6__ {TYPE_2__ mb; } ;
struct TYPE_8__ {int /*<<< orphan*/ * context1; struct lpfc_vport* vport; TYPE_1__ u; } ;
typedef  TYPE_2__ MAILBOX_t ;
typedef  TYPE_3__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 scalar_t__ LPFC_PHYSICAL_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	MAILBOX_t *mb = &pmb->u.mb;
	struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *) pmb->context1;
	struct lpfc_vport  *vport = pmb->vport;


	/* Check for error */
	if (mb->mbxStatus) {
		/* READ_SPARAM mbox error <mbxStatus> state <hba_state> */
		FUNC4(vport, KERN_ERR, LOG_MBOX,
				 "0319 READ_SPARAM mbxStatus error x%x "
				 "hba state x%x>\n",
				 mb->mbxStatus, vport->port_state);
		FUNC2(phba);
		goto out;
	}

	FUNC6((uint8_t *) &vport->fc_sparam, (uint8_t *) mp->virt,
	       sizeof (struct serv_parm));
	FUNC5(vport);
	if (vport->port_type == LPFC_PHYSICAL_PORT) {
		FUNC6(&phba->wwnn, &vport->fc_nodename, sizeof(phba->wwnn));
		FUNC6(&phba->wwpn, &vport->fc_portname, sizeof(phba->wwnn));
	}

	FUNC3(phba, mp->virt, mp->phys);
	FUNC0(mp);
	FUNC7(pmb, phba->mbox_mem_pool);
	return;

out:
	pmb->context1 = NULL;
	FUNC3(phba, mp->virt, mp->phys);
	FUNC0(mp);
	FUNC1(phba, vport);
	FUNC7(pmb, phba->mbox_mem_pool);
	return;
}