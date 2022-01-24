#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vport_id ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct static_vport_info {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; TYPE_6__* vport_list; int /*<<< orphan*/  rev; int /*<<< orphan*/  signature; } ;
struct lpfc_vport {int /*<<< orphan*/  vport_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  pport; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; TYPE_6__* vport_list; int /*<<< orphan*/  rev; int /*<<< orphan*/  signature; } ;
struct TYPE_8__ {int* mb_words; } ;
struct TYPE_9__ {TYPE_1__ un; } ;
struct TYPE_11__ {int word_cnt; } ;
struct TYPE_12__ {TYPE_4__ varDmp; } ;
struct TYPE_14__ {TYPE_5__ un; scalar_t__ mbxStatus; } ;
struct TYPE_10__ {TYPE_2__ mqe; TYPE_7__ mb; } ;
struct fc_vport_identifiers {int disable; scalar_t__ context1; int /*<<< orphan*/  vport_type; int /*<<< orphan*/  roles; void* node_name; void* port_name; TYPE_3__ u; int /*<<< orphan*/  vport; } ;
struct fc_vport {scalar_t__ dd_data; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  wwnn; int /*<<< orphan*/  wwpn; } ;
typedef  TYPE_7__ MAILBOX_t ;
typedef  struct fc_vport_identifiers LPFC_MBOXQ_t ;

/* Variables and functions */
 int DMP_RSP_OFFSET ; 
 int /*<<< orphan*/  FC_PORTTYPE_NPIV ; 
 int /*<<< orphan*/  FC_PORT_ROLE_FCP_INITIATOR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_MBOX_TMO ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int MAX_STATIC_VPORT_COUNT ; 
 int MBX_SUCCESS ; 
 int MBX_TIMEOUT ; 
 int /*<<< orphan*/  STATIC_VPORT ; 
 int VPORT_INFO_REV ; 
 int VPORT_INFO_REV_MASK ; 
 int VPORT_INFO_SIG ; 
 struct fc_vport* FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ ,struct fc_vport_identifiers*) ; 
 int /*<<< orphan*/  FUNC1 (struct static_vport_info*) ; 
 struct static_vport_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct lpfc_hba*,struct fc_vport_identifiers*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct Scsi_Host* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct lpfc_hba*,struct fc_vport_identifiers*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct fc_vport_identifiers* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fc_vport_identifiers*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fc_vport_identifiers*,int /*<<< orphan*/ ,int) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 

void
FUNC15(struct lpfc_hba *phba)
{
	LPFC_MBOXQ_t *pmb = NULL;
	MAILBOX_t *mb;
	struct static_vport_info *vport_info;
	int mbx_wait_rc = 0, i;
	struct fc_vport_identifiers vport_id;
	struct fc_vport *new_fc_vport;
	struct Scsi_Host *shost;
	struct lpfc_vport *vport;
	uint16_t offset = 0;
	uint8_t *vport_buff;
	struct lpfc_dmabuf *mp;
	uint32_t byte_count = 0;

	pmb = FUNC11(phba->mbox_mem_pool, GFP_KERNEL);
	if (!pmb) {
		FUNC6(phba, KERN_ERR, LOG_INIT,
				"0542 lpfc_create_static_vport failed to"
				" allocate mailbox memory\n");
		return;
	}
	FUNC13(pmb, 0, sizeof(LPFC_MBOXQ_t));
	mb = &pmb->u.mb;

	vport_info = FUNC2(sizeof(struct static_vport_info), GFP_KERNEL);
	if (!vport_info) {
		FUNC6(phba, KERN_ERR, LOG_INIT,
				"0543 lpfc_create_static_vport failed to"
				" allocate vport_info\n");
		FUNC12(pmb, phba->mbox_mem_pool);
		return;
	}

	vport_buff = (uint8_t *) vport_info;
	do {
		/* free dma buffer from previous round */
		if (pmb->context1) {
			mp = (struct lpfc_dmabuf *)pmb->context1;
			FUNC5(phba, mp->virt, mp->phys);
			FUNC1(mp);
		}
		if (FUNC4(phba, pmb, offset))
			goto out;

		pmb->vport = phba->pport;
		mbx_wait_rc = FUNC8(phba, pmb,
							LPFC_MBOX_TMO);

		if ((mbx_wait_rc != MBX_SUCCESS) || mb->mbxStatus) {
			FUNC6(phba, KERN_WARNING, LOG_INIT,
				"0544 lpfc_create_static_vport failed to"
				" issue dump mailbox command ret 0x%x "
				"status 0x%x\n",
				mbx_wait_rc, mb->mbxStatus);
			goto out;
		}

		if (phba->sli_rev == LPFC_SLI_REV4) {
			byte_count = pmb->u.mqe.un.mb_words[5];
			mp = (struct lpfc_dmabuf *)pmb->context1;
			if (byte_count > sizeof(struct static_vport_info) -
					offset)
				byte_count = sizeof(struct static_vport_info)
					- offset;
			FUNC10(vport_buff + offset, mp->virt, byte_count);
			offset += byte_count;
		} else {
			if (mb->un.varDmp.word_cnt >
				sizeof(struct static_vport_info) - offset)
				mb->un.varDmp.word_cnt =
					sizeof(struct static_vport_info)
						- offset;
			byte_count = mb->un.varDmp.word_cnt;
			FUNC9(((uint8_t *)mb) + DMP_RSP_OFFSET,
				vport_buff + offset,
				byte_count);

			offset += byte_count;
		}

	} while (byte_count &&
		offset < sizeof(struct static_vport_info));


	if ((FUNC3(vport_info->signature) != VPORT_INFO_SIG) ||
		((FUNC3(vport_info->rev) & VPORT_INFO_REV_MASK)
			!= VPORT_INFO_REV)) {
		FUNC6(phba, KERN_ERR, LOG_INIT,
			"0545 lpfc_create_static_vport bad"
			" information header 0x%x 0x%x\n",
			FUNC3(vport_info->signature),
			FUNC3(vport_info->rev) & VPORT_INFO_REV_MASK);

		goto out;
	}

	shost = FUNC7(phba->pport);

	for (i = 0; i < MAX_STATIC_VPORT_COUNT; i++) {
		FUNC13(&vport_id, 0, sizeof(vport_id));
		vport_id.port_name = FUNC14(vport_info->vport_list[i].wwpn);
		vport_id.node_name = FUNC14(vport_info->vport_list[i].wwnn);
		if (!vport_id.port_name || !vport_id.node_name)
			continue;

		vport_id.roles = FC_PORT_ROLE_FCP_INITIATOR;
		vport_id.vport_type = FC_PORTTYPE_NPIV;
		vport_id.disable = false;
		new_fc_vport = FUNC0(shost, 0, &vport_id);

		if (!new_fc_vport) {
			FUNC6(phba, KERN_WARNING, LOG_INIT,
				"0546 lpfc_create_static_vport failed to"
				" create vport\n");
			continue;
		}

		vport = *(struct lpfc_vport **)new_fc_vport->dd_data;
		vport->vport_flag |= STATIC_VPORT;
	}

out:
	FUNC1(vport_info);
	if (mbx_wait_rc != MBX_TIMEOUT) {
		if (pmb->context1) {
			mp = (struct lpfc_dmabuf *)pmb->context1;
			FUNC5(phba, mp->virt, mp->phys);
			FUNC1(mp);
		}
		FUNC12(pmb, phba->mbox_mem_pool);
	}
	return;
}