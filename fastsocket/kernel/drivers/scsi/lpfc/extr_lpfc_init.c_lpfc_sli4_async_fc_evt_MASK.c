#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  link_event; } ;
struct TYPE_14__ {TYPE_4__ slistat; TYPE_3__* ring; } ;
struct TYPE_10__ {int topology; int status; int type; int number; int fault; int logical_speed; int /*<<< orphan*/  speed; int /*<<< orphan*/  duplex; } ;
struct TYPE_11__ {TYPE_1__ link_state; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  pport; TYPE_5__ sli; TYPE_2__ sli4_hba; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  virt; int /*<<< orphan*/  phys; } ;
struct lpfc_acqe_fc_la {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  vport; int /*<<< orphan*/  mbox_cmpl; } ;
struct TYPE_12__ {int /*<<< orphan*/  flag; } ;
typedef  TYPE_6__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  LPFC_ASYNC_LINK_DUPLEX_FULL ; 
 size_t LPFC_ELS_RING ; 
 int LPFC_FC_LA_EVENT_TYPE_FC_LINK ; 
 int /*<<< orphan*/  LPFC_STOP_IOCB_EVENT ; 
 int /*<<< orphan*/  LPFC_TRAILER_CODE_FC ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct lpfc_acqe_fc_la*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 struct lpfc_dmabuf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_acqe_fc_la_att_type ; 
 int /*<<< orphan*/  lpfc_acqe_fc_la_llink_spd ; 
 int /*<<< orphan*/  lpfc_acqe_fc_la_port_number ; 
 int /*<<< orphan*/  lpfc_acqe_fc_la_port_type ; 
 int /*<<< orphan*/  lpfc_acqe_fc_la_speed ; 
 int /*<<< orphan*/  lpfc_acqe_fc_la_topology ; 
 int /*<<< orphan*/  lpfc_acqe_link_fault ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpfc_mbx_cmpl_read_topology ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,TYPE_6__*,struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct lpfc_hba*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_trailer_type ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct lpfc_hba *phba, struct lpfc_acqe_fc_la *acqe_fc)
{
	struct lpfc_dmabuf *mp;
	LPFC_MBOXQ_t *pmb;
	int rc;

	if (FUNC0(lpfc_trailer_type, acqe_fc) !=
	    LPFC_FC_LA_EVENT_TYPE_FC_LINK) {
		FUNC5(phba, KERN_ERR, LOG_SLI,
				"2895 Non FC link Event detected.(%d)\n",
				FUNC0(lpfc_trailer_type, acqe_fc));
		return;
	}
	/* Keep the link status for extra SLI4 state machine reference */
	phba->sli4_hba.link_state.speed =
			FUNC7(phba, LPFC_TRAILER_CODE_FC,
				FUNC0(lpfc_acqe_fc_la_speed, acqe_fc));
	phba->sli4_hba.link_state.duplex = LPFC_ASYNC_LINK_DUPLEX_FULL;
	phba->sli4_hba.link_state.topology =
				FUNC0(lpfc_acqe_fc_la_topology, acqe_fc);
	phba->sli4_hba.link_state.status =
				FUNC0(lpfc_acqe_fc_la_att_type, acqe_fc);
	phba->sli4_hba.link_state.type =
				FUNC0(lpfc_acqe_fc_la_port_type, acqe_fc);
	phba->sli4_hba.link_state.number =
				FUNC0(lpfc_acqe_fc_la_port_number, acqe_fc);
	phba->sli4_hba.link_state.fault =
				FUNC0(lpfc_acqe_link_fault, acqe_fc);
	phba->sli4_hba.link_state.logical_speed =
				FUNC0(lpfc_acqe_fc_la_llink_spd, acqe_fc) * 10;
	FUNC5(phba, KERN_INFO, LOG_SLI,
			"2896 Async FC event - Speed:%dGBaud Topology:x%x "
			"LA Type:x%x Port Type:%d Port Number:%d Logical speed:"
			"%dMbps Fault:%d\n",
			phba->sli4_hba.link_state.speed,
			phba->sli4_hba.link_state.topology,
			phba->sli4_hba.link_state.status,
			phba->sli4_hba.link_state.type,
			phba->sli4_hba.link_state.number,
			phba->sli4_hba.link_state.logical_speed,
			phba->sli4_hba.link_state.fault);
	pmb = (LPFC_MBOXQ_t *)FUNC9(phba->mbox_mem_pool, GFP_KERNEL);
	if (!pmb) {
		FUNC5(phba, KERN_ERR, LOG_SLI,
				"2897 The mboxq allocation failed\n");
		return;
	}
	mp = FUNC2(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
	if (!mp) {
		FUNC5(phba, KERN_ERR, LOG_SLI,
				"2898 The lpfc_dmabuf allocation failed\n");
		goto out_free_pmb;
	}
	mp->virt = FUNC4(phba, 0, &mp->phys);
	if (!mp->virt) {
		FUNC5(phba, KERN_ERR, LOG_SLI,
				"2899 The mbuf allocation failed\n");
		goto out_free_dmabuf;
	}

	/* Cleanup any outstanding ELS commands */
	FUNC3(phba);

	/* Block ELS IOCBs until we have done process link event */
	phba->sli.ring[LPFC_ELS_RING].flag |= LPFC_STOP_IOCB_EVENT;

	/* Update link event statistics */
	phba->sli.slistat.link_event++;

	/* Create lpfc_handle_latt mailbox command from link ACQE */
	FUNC6(phba, pmb, mp);
	pmb->mbox_cmpl = lpfc_mbx_cmpl_read_topology;
	pmb->vport = phba->pport;

	rc = FUNC8(phba, pmb, MBX_NOWAIT);
	if (rc == MBX_NOT_FINISHED)
		goto out_free_dmabuf;
	return;

out_free_dmabuf:
	FUNC1(mp);
out_free_pmb:
	FUNC10(pmb, phba->mbox_mem_pool);
}