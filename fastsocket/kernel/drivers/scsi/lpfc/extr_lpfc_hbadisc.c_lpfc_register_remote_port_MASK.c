#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int load_flag; struct lpfc_hba* phba; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct TYPE_8__ {int /*<<< orphan*/  wwn; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  wwn; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct lpfc_nodelist {int nlp_type; int nlp_sid; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  vport; int /*<<< orphan*/  nlp_class_sup; int /*<<< orphan*/  nlp_maxframe; struct fc_rport* rport; int /*<<< orphan*/  nlp_flag; TYPE_4__ nlp_portname; TYPE_2__ nlp_nodename; } ;
struct lpfc_hba {TYPE_5__* pcidev; } ;
struct fc_rport_identifiers {int /*<<< orphan*/  roles; int /*<<< orphan*/  port_id; void* port_name; void* node_name; } ;
struct fc_rport {int scsi_target_id; struct lpfc_rport_data* dd_data; int /*<<< orphan*/  supported_classes; int /*<<< orphan*/  maxframe_size; int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_RPORT_ROLE_FCP_INITIATOR ; 
 int /*<<< orphan*/  FC_RPORT_ROLE_FCP_TARGET ; 
 int /*<<< orphan*/  FC_RPORT_ROLE_UNKNOWN ; 
 int FC_UNLOADING ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_NODE ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_RPORT ; 
 int LPFC_MAX_TARGET ; 
 int NLP_FCP_INITIATOR ; 
 int NLP_FCP_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct fc_rport* FUNC1 (struct Scsi_Host*,int /*<<< orphan*/ ,struct fc_rport_identifiers*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct lpfc_nodelist* FUNC5 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct fc_rport*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC8 (struct lpfc_vport*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
	struct Scsi_Host *shost = FUNC8(vport);
	struct fc_rport  *rport;
	struct lpfc_rport_data *rdata;
	struct fc_rport_identifiers rport_ids;
	struct lpfc_hba  *phba = vport->phba;

	/* Remote port has reappeared. Re-register w/ FC transport */
	rport_ids.node_name = FUNC9(ndlp->nlp_nodename.u.wwn);
	rport_ids.port_name = FUNC9(ndlp->nlp_portname.u.wwn);
	rport_ids.port_id = ndlp->nlp_DID;
	rport_ids.roles = FC_RPORT_ROLE_UNKNOWN;

	/*
	 * We leave our node pointer in rport->dd_data when we unregister a
	 * FCP target port.  But fc_remote_port_add zeros the space to which
	 * rport->dd_data points.  So, if we're reusing a previously
	 * registered port, drop the reference that we took the last time we
	 * registered the port.
	 */
	if (ndlp->rport && ndlp->rport->dd_data &&
	    ((struct lpfc_rport_data *) ndlp->rport->dd_data)->pnode == ndlp)
		FUNC6(ndlp);

	FUNC4(vport, LPFC_DISC_TRC_RPORT,
		"rport add:       did:x%x flg:x%x type x%x",
		ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_type);

	/* Don't add the remote port if unloading. */
	if (vport->load_flag & FC_UNLOADING)
		return;

	ndlp->rport = rport = FUNC1(shost, 0, &rport_ids);
	if (!rport || !FUNC3(&rport->dev)) {
		FUNC0(KERN_WARNING, &phba->pcidev->dev,
			   "Warning: fc_remote_port_add failed\n");
		return;
	}

	/* initialize static port data */
	rport->maxframe_size = ndlp->nlp_maxframe;
	rport->supported_classes = ndlp->nlp_class_sup;
	rdata = rport->dd_data;
	rdata->pnode = FUNC5(ndlp);

	if (ndlp->nlp_type & NLP_FCP_TARGET)
		rport_ids.roles |= FC_RPORT_ROLE_FCP_TARGET;
	if (ndlp->nlp_type & NLP_FCP_INITIATOR)
		rport_ids.roles |= FC_RPORT_ROLE_FCP_INITIATOR;

	if (rport_ids.roles !=  FC_RPORT_ROLE_UNKNOWN)
		FUNC2(rport, rport_ids.roles);

	FUNC7(ndlp->vport, KERN_INFO, LOG_NODE,
			 "3183 rport register x%06x, rport %p role x%x\n",
			 ndlp->nlp_DID, rport, rport_ids.roles);

	if ((rport->scsi_target_id != -1) &&
	    (rport->scsi_target_id < LPFC_MAX_TARGET)) {
		ndlp->nlp_sid = rport->scsi_target_id;
	}
	return;
}