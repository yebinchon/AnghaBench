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
typedef  void* uint8_t ;
typedef  int uint32_t ;
struct TYPE_10__ {void* lsRjtRsnCodeExp; void* lsRjtRsnCode; } ;
struct TYPE_11__ {int /*<<< orphan*/  lsRjtError; TYPE_3__ b; } ;
struct ls_rjt {TYPE_4__ un; } ;
struct lpfc_vport {int load_flag; int fc_flag; int port_state; int /*<<< orphan*/  fc_prevDID; int /*<<< orphan*/  fc_myDID; } ;
struct lpfc_sli_ring {int dummy; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_flag; int /*<<< orphan*/  nlp_type; } ;
struct TYPE_8__ {int remoteID; int /*<<< orphan*/  parmRo; } ;
struct TYPE_12__ {int* ulpWord; TYPE_1__ rcvels; } ;
struct TYPE_14__ {int ulpStatus; int /*<<< orphan*/  ulpTimeout; TYPE_5__ un; } ;
struct lpfc_iocbq {struct lpfc_nodelist* context1; TYPE_7__ iocb; struct lpfc_vport* vport; scalar_t__ context2; } ;
struct TYPE_13__ {int /*<<< orphan*/  elsRcvDrop; int /*<<< orphan*/  elsRcvECHO; int /*<<< orphan*/  elsRcvRRQ; int /*<<< orphan*/  elsRcvRTV; int /*<<< orphan*/  elsRcvRNID; int /*<<< orphan*/  elsRcvRPL; int /*<<< orphan*/  elsRcvRPS; int /*<<< orphan*/  elsRcvRLS; int /*<<< orphan*/  elsRcvLIRR; int /*<<< orphan*/  elsRcvPRLI; int /*<<< orphan*/  elsRcvFAN; int /*<<< orphan*/  elsRcvFARP; int /*<<< orphan*/  elsRcvFARPR; int /*<<< orphan*/  elsRcvPDISC; int /*<<< orphan*/  elsRcvADISC; int /*<<< orphan*/  elsRcvRSCN; int /*<<< orphan*/  elsRcvPRLO; int /*<<< orphan*/  elsRcvLOGO; int /*<<< orphan*/  elsRcvFLOGI; int /*<<< orphan*/  elsRcvPLOGI; int /*<<< orphan*/  elsRcvFrame; } ;
struct lpfc_hba {int sli3_options; TYPE_6__ fc_stat; int /*<<< orphan*/  fc_topology_changed; int /*<<< orphan*/  sli_rev; TYPE_2__* pport; int /*<<< orphan*/  nlp_mem_pool; } ;
struct lpfc_dmabuf {int* virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  stat ;
struct TYPE_9__ {int fc_flag; } ;
typedef  TYPE_7__ IOCB_t ;

/* Variables and functions */
#define  ELS_CMD_ADISC 147 
#define  ELS_CMD_ECHO 146 
#define  ELS_CMD_FAN 145 
#define  ELS_CMD_FARP 144 
#define  ELS_CMD_FARPR 143 
#define  ELS_CMD_FLOGI 142 
#define  ELS_CMD_LIRR 141 
#define  ELS_CMD_LOGO 140 
 int ELS_CMD_MASK ; 
#define  ELS_CMD_PDISC 139 
#define  ELS_CMD_PLOGI 138 
#define  ELS_CMD_PRLI 137 
#define  ELS_CMD_PRLO 136 
#define  ELS_CMD_REC 135 
#define  ELS_CMD_RLS 134 
#define  ELS_CMD_RNID 133 
#define  ELS_CMD_RPL 132 
#define  ELS_CMD_RPS 131 
#define  ELS_CMD_RRQ 130 
#define  ELS_CMD_RSCN 129 
#define  ELS_CMD_RTV 128 
 int FC_DISC_DELAYED ; 
 int FC_PT2PT ; 
 int FC_PT2PT_PLOGI ; 
 int FC_UNLOADING ; 
 int FC_VFI_REGISTERED ; 
 int Fabric_DID_MASK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int LPFC_DISC_AUTH ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_UNSOL ; 
 int LPFC_SLI3_HBQ_ENABLED ; 
 int /*<<< orphan*/  LPFC_SLI_REV4 ; 
 void* LSEXP_INVALID_OX_RX ; 
 void* LSEXP_NOTHING_MORE ; 
 void* LSRJT_CMD_UNSUPPORTED ; 
 void* LSRJT_UNABLE_TPC ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_EVT_RCV_ADISC ; 
 int /*<<< orphan*/  NLP_EVT_RCV_LOGO ; 
 int /*<<< orphan*/  NLP_EVT_RCV_PDISC ; 
 int /*<<< orphan*/  NLP_EVT_RCV_PLOGI ; 
 int /*<<< orphan*/  NLP_EVT_RCV_PRLI ; 
 int /*<<< orphan*/  NLP_EVT_RCV_PRLO ; 
 int /*<<< orphan*/  NLP_FABRIC ; 
 int /*<<< orphan*/  NLP_STE_NPR_NODE ; 
 scalar_t__ NLP_STE_UNUSED_NODE ; 
 int NLP_TARGET_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_vport*,int /*<<< orphan*/ ,struct lpfc_iocbq*,struct lpfc_nodelist*,int /*<<< orphan*/ *) ; 
 struct lpfc_nodelist* FUNC18 (struct lpfc_vport*,struct lpfc_nodelist*,scalar_t__) ; 
 struct lpfc_nodelist* FUNC19 (struct lpfc_vport*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct lpfc_vport*) ; 
 void* FUNC21 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC22 (struct lpfc_vport*,struct lpfc_nodelist*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC24 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC25 (struct lpfc_hba*,int*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC26 (struct lpfc_hba*,struct lpfc_sli_ring*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC28 (struct lpfc_vport*,struct lpfc_nodelist*,int*) ; 
 struct Scsi_Host* FUNC29 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC30 (struct lpfc_hba*) ; 
 struct lpfc_nodelist* FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct ls_rjt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC35(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
		      struct lpfc_vport *vport, struct lpfc_iocbq *elsiocb)
{
	struct Scsi_Host  *shost;
	struct lpfc_nodelist *ndlp;
	struct ls_rjt stat;
	uint32_t *payload;
	uint32_t cmd, did, newnode;
	uint8_t rjt_exp, rjt_err = 0;
	IOCB_t *icmd = &elsiocb->iocb;

	if (!vport || !(elsiocb->context2))
		goto dropit;

	newnode = 0;
	payload = ((struct lpfc_dmabuf *)elsiocb->context2)->virt;
	cmd = *payload;
	if ((phba->sli3_options & LPFC_SLI3_HBQ_ENABLED) == 0)
		FUNC26(phba, pring, 1);

	did = icmd->un.rcvels.remoteID;
	if (icmd->ulpStatus) {
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV Unsol ELS:  status:x%x/x%x did:x%x",
			icmd->ulpStatus, icmd->un.ulpWord[4], did);
		goto dropit;
	}

	/* Check to see if link went down during discovery */
	if (FUNC3(vport))
		goto dropit;

	/* Ignore traffic received during vport shutdown. */
	if (vport->load_flag & FC_UNLOADING)
		goto dropit;

	/* If NPort discovery is delayed drop incoming ELS */
	if ((vport->fc_flag & FC_DISC_DELAYED) &&
			(cmd != ELS_CMD_PLOGI))
		goto dropit;

	ndlp = FUNC19(vport, did);
	if (!ndlp) {
		/* Cannot find existing Fabric ndlp, so allocate a new one */
		ndlp = FUNC31(phba->nlp_mem_pool, GFP_KERNEL);
		if (!ndlp)
			goto dropit;

		FUNC22(vport, ndlp, did);
		FUNC24(vport, ndlp, NLP_STE_NPR_NODE);
		newnode = 1;
		if ((did & Fabric_DID_MASK) == Fabric_DID_MASK)
			ndlp->nlp_type |= NLP_FABRIC;
	} else if (!FUNC0(ndlp)) {
		ndlp = FUNC18(vport, ndlp,
					NLP_STE_UNUSED_NODE);
		if (!ndlp)
			goto dropit;
		FUNC24(vport, ndlp, NLP_STE_NPR_NODE);
		newnode = 1;
		if ((did & Fabric_DID_MASK) == Fabric_DID_MASK)
			ndlp->nlp_type |= NLP_FABRIC;
	} else if (ndlp->nlp_state == NLP_STE_UNUSED_NODE) {
		/* This is similar to the new node path */
		ndlp = FUNC21(ndlp);
		if (!ndlp)
			goto dropit;
		FUNC24(vport, ndlp, NLP_STE_NPR_NODE);
		newnode = 1;
	}

	phba->fc_stat.elsRcvFrame++;

	elsiocb->context1 = FUNC21(ndlp);
	elsiocb->vport = vport;

	if ((cmd & ELS_CMD_MASK) == ELS_CMD_RSCN) {
		cmd &= ELS_CMD_MASK;
	}
	/* ELS command <elsCmd> received from NPORT <did> */
	FUNC27(vport, KERN_INFO, LOG_ELS,
			 "0112 ELS command x%x received from NPORT x%x "
			 "Data: x%x x%x x%x x%x\n",
			cmd, did, vport->port_state, vport->fc_flag,
			vport->fc_myDID, vport->fc_prevDID);
	switch (cmd) {
	case ELS_CMD_PLOGI:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV PLOGI:       did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvPLOGI++;
		ndlp = FUNC25(phba, payload, ndlp);
		if (phba->sli_rev == LPFC_SLI_REV4 &&
		    (phba->pport->fc_flag & FC_PT2PT)) {
			vport->fc_prevDID = vport->fc_myDID;
			/* Our DID needs to be updated before registering
			 * the vfi. This is done in lpfc_rcv_plogi but
			 * that is called after the reg_vfi.
			 */
			vport->fc_myDID = elsiocb->iocb.un.rcvels.parmRo;
			FUNC27(vport, KERN_INFO, LOG_ELS,
					 "3312 Remote port assigned DID x%x "
					 "%x\n", vport->fc_myDID,
					 vport->fc_prevDID);
		}

		FUNC28(vport, ndlp, payload);

		/* If Nport discovery is delayed, reject PLOGIs */
		if (vport->fc_flag & FC_DISC_DELAYED) {
			rjt_err = LSRJT_UNABLE_TPC;
			rjt_exp = LSEXP_NOTHING_MORE;
			break;
		}
		shost = FUNC29(vport);
		if (vport->port_state < LPFC_DISC_AUTH) {
			if (!(phba->pport->fc_flag & FC_PT2PT) ||
				(phba->pport->fc_flag & FC_PT2PT_PLOGI)) {
				rjt_err = LSRJT_UNABLE_TPC;
				rjt_exp = LSEXP_NOTHING_MORE;
				break;
			}
			/* We get here, and drop thru, if we are PT2PT with
			 * another NPort and the other side has initiated
			 * the PLOGI before responding to our FLOGI.
			 */
			if (phba->sli_rev == LPFC_SLI_REV4 &&
			    (phba->fc_topology_changed ||
			     vport->fc_myDID != vport->fc_prevDID)) {
				FUNC30(phba);
				FUNC33(shost->host_lock);
				vport->fc_flag &= ~FC_VFI_REGISTERED;
				FUNC34(shost->host_lock);
				phba->fc_topology_changed = 0;
				FUNC20(vport);
			}
		}

		FUNC33(shost->host_lock);
		ndlp->nlp_flag &= ~NLP_TARGET_REMOVE;
		FUNC34(shost->host_lock);

		FUNC2(vport, ndlp, elsiocb,
					NLP_EVT_RCV_PLOGI);

		break;
	case ELS_CMD_FLOGI:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV FLOGI:       did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvFLOGI++;
		FUNC8(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_LOGO:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV LOGO:        did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvLOGO++;
		FUNC28(vport, ndlp, payload);
		if (vport->port_state < LPFC_DISC_AUTH) {
			rjt_err = LSRJT_UNABLE_TPC;
			rjt_exp = LSEXP_NOTHING_MORE;
			break;
		}
		FUNC2(vport, ndlp, elsiocb, NLP_EVT_RCV_LOGO);
		break;
	case ELS_CMD_PRLO:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV PRLO:        did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvPRLO++;
		FUNC28(vport, ndlp, payload);
		if (vport->port_state < LPFC_DISC_AUTH) {
			rjt_err = LSRJT_UNABLE_TPC;
			rjt_exp = LSEXP_NOTHING_MORE;
			break;
		}
		FUNC2(vport, ndlp, elsiocb, NLP_EVT_RCV_PRLO);
		break;
	case ELS_CMD_RSCN:
		phba->fc_stat.elsRcvRSCN++;
		FUNC15(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_ADISC:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV ADISC:       did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		FUNC28(vport, ndlp, payload);
		phba->fc_stat.elsRcvADISC++;
		if (vport->port_state < LPFC_DISC_AUTH) {
			rjt_err = LSRJT_UNABLE_TPC;
			rjt_exp = LSEXP_NOTHING_MORE;
			break;
		}
		FUNC2(vport, ndlp, elsiocb,
					NLP_EVT_RCV_ADISC);
		break;
	case ELS_CMD_PDISC:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV PDISC:       did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvPDISC++;
		if (vport->port_state < LPFC_DISC_AUTH) {
			rjt_err = LSRJT_UNABLE_TPC;
			rjt_exp = LSEXP_NOTHING_MORE;
			break;
		}
		FUNC2(vport, ndlp, elsiocb,
					NLP_EVT_RCV_PDISC);
		break;
	case ELS_CMD_FARPR:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV FARPR:       did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvFARPR++;
		FUNC7(vport, elsiocb, ndlp);
		break;
	case ELS_CMD_FARP:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV FARP:        did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvFARP++;
		FUNC6(vport, elsiocb, ndlp);
		break;
	case ELS_CMD_FAN:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV FAN:         did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvFAN++;
		FUNC5(vport, elsiocb, ndlp);
		break;
	case ELS_CMD_PRLI:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV PRLI:        did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvPRLI++;
		if (vport->port_state < LPFC_DISC_AUTH) {
			rjt_err = LSRJT_UNABLE_TPC;
			rjt_exp = LSEXP_NOTHING_MORE;
			break;
		}
		FUNC2(vport, ndlp, elsiocb, NLP_EVT_RCV_PRLI);
		break;
	case ELS_CMD_LIRR:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV LIRR:        did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvLIRR++;
		FUNC9(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_RLS:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV RLS:         did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvRLS++;
		FUNC10(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_RPS:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV RPS:         did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvRPS++;
		FUNC13(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_RPL:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV RPL:         did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvRPL++;
		FUNC12(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_RNID:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV RNID:        did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvRNID++;
		FUNC11(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_RTV:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV RTV:        did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);
		phba->fc_stat.elsRcvRTV++;
		FUNC16(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_RRQ:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV RRQ:         did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvRRQ++;
		FUNC14(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_ECHO:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV ECHO:        did:x%x/ste:x%x flg:x%x",
			did, vport->port_state, ndlp->nlp_flag);

		phba->fc_stat.elsRcvECHO++;
		FUNC4(vport, elsiocb, ndlp);
		if (newnode)
			FUNC23(ndlp);
		break;
	case ELS_CMD_REC:
			/* receive this due to exchange closed */
			rjt_err = LSRJT_UNABLE_TPC;
			rjt_exp = LSEXP_INVALID_OX_RX;
		break;
	default:
		FUNC1(vport, LPFC_DISC_TRC_ELS_UNSOL,
			"RCV ELS cmd:     cmd:x%x did:x%x/ste:x%x",
			cmd, did, vport->port_state);

		/* Unsupported ELS command, reject */
		rjt_err = LSRJT_CMD_UNSUPPORTED;
		rjt_exp = LSEXP_NOTHING_MORE;

		/* Unknown ELS command <elsCmd> received from NPORT <did> */
		FUNC27(vport, KERN_ERR, LOG_ELS,
				 "0115 Unknown ELS command x%x "
				 "received from NPORT x%x\n", cmd, did);
		if (newnode)
			FUNC23(ndlp);
		break;
	}

	/* check if need to LS_RJT received ELS cmd */
	if (rjt_err) {
		FUNC32(&stat, 0, sizeof(stat));
		stat.un.b.lsRjtRsnCode = rjt_err;
		stat.un.b.lsRjtRsnCodeExp = rjt_exp;
		FUNC17(vport, stat.un.lsRjtError, elsiocb, ndlp,
			NULL);
	}

	FUNC23(elsiocb->context1);
	elsiocb->context1 = NULL;
	return;

dropit:
	if (vport && !(vport->load_flag & FC_UNLOADING))
		FUNC27(vport, KERN_ERR, LOG_ELS,
			"0111 Dropping received ELS cmd "
			"Data: x%x x%x x%x\n",
			icmd->ulpStatus, icmd->un.ulpWord[4], icmd->ulpTimeout);
	phba->fc_stat.elsRcvDrop++;
}