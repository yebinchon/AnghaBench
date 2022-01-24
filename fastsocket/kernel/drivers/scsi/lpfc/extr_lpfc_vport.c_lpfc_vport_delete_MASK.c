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
struct lpfc_vport {scalar_t__ port_type; int vport_flag; int load_flag; scalar_t__ port_state; int vpi_state; int unreg_vpi_cmpl; int /*<<< orphan*/  listentry; scalar_t__ work_port_events; int /*<<< orphan*/  vpi; struct lpfc_hba* phba; scalar_t__ ct_flags; scalar_t__ cfg_enable_da_id; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;
struct lpfc_hba {int fc_ratov; scalar_t__ link_state; scalar_t__ fc_topology; int /*<<< orphan*/  hbalock; struct lpfc_vport* pport; int /*<<< orphan*/  ndlp_lock; int /*<<< orphan*/  nlp_mem_pool; } ;
struct fc_vport {scalar_t__ dd_data; scalar_t__ shost; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FC_UNLOADING ; 
 int /*<<< orphan*/  Fabric_DID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_VPORT ; 
 scalar_t__ LPFC_LINK_UP ; 
 scalar_t__ LPFC_PHYSICAL_PORT ; 
 scalar_t__ LPFC_TOPOLOGY_LOOP ; 
 int LPFC_VPI_REGISTERED ; 
 scalar_t__ LPFC_VPORT_FAILED ; 
 scalar_t__ LPFC_VPORT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 scalar_t__ FUNC1 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_nodelist*) ; 
 scalar_t__ NLP_STE_UNMAPPED_NODE ; 
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 int /*<<< orphan*/  NameServer_DID ; 
 int /*<<< orphan*/  SLI_CTNS_DA_ID ; 
 int STATIC_VPORT ; 
 int VPORT_ERROR ; 
 int VPORT_INVAL ; 
 int VPORT_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*) ; 
 struct lpfc_nodelist* FUNC9 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC10 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 scalar_t__ FUNC14 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC22 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC23 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC24 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC25 (struct lpfc_vport*) ; 
 struct lpfc_nodelist* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 long FUNC29 (long) ; 
 int /*<<< orphan*/  FUNC30 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC31 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

int
FUNC35(struct fc_vport *fc_vport)
{
	struct lpfc_nodelist *ndlp = NULL;
	struct Scsi_Host *shost = (struct Scsi_Host *) fc_vport->shost;
	struct lpfc_vport *vport = *(struct lpfc_vport **)fc_vport->dd_data;
	struct lpfc_hba   *phba = vport->phba;
	long timeout;
	bool ns_ndlp_referenced = false;

	if (vport->port_type == LPFC_PHYSICAL_PORT) {
		FUNC20(vport, KERN_ERR, LOG_VPORT,
				 "1812 vport_delete failed: Cannot delete "
				 "physical host\n");
		return VPORT_ERROR;
	}

	/* If the vport is a static vport fail the deletion. */
	if ((vport->vport_flag & STATIC_VPORT) &&
		!(phba->pport->load_flag & FC_UNLOADING)) {
		FUNC20(vport, KERN_ERR, LOG_VPORT,
				 "1837 vport_delete failed: Cannot delete "
				 "static vport.\n");
		return VPORT_ERROR;
	}
	FUNC33(&phba->hbalock);
	vport->load_flag |= FC_UNLOADING;
	FUNC34(&phba->hbalock);
	/*
	 * If we are not unloading the driver then prevent the vport_delete
	 * from happening until after this vport's discovery is finished.
	 */
	if (!(phba->pport->load_flag & FC_UNLOADING)) {
		int check_count = 0;
		while (check_count < ((phba->fc_ratov * 3) + 3) &&
		       vport->port_state > LPFC_VPORT_FAILED &&
		       vport->port_state < LPFC_VPORT_READY) {
			check_count++;
			FUNC28(1000);
		}
		if (vport->port_state > LPFC_VPORT_FAILED &&
		    vport->port_state < LPFC_VPORT_READY)
			return -EAGAIN;
	}
	/*
	 * This is a bit of a mess.  We want to ensure the shost doesn't get
	 * torn down until we're done with the embedded lpfc_vport structure.
	 *
	 * Beyond holding a reference for this function, we also need a
	 * reference for outstanding I/O requests we schedule during delete
	 * processing.  But once we scsi_remove_host() we can no longer obtain
	 * a reference through scsi_host_get().
	 *
	 * So we take two references here.  We release one reference at the
	 * bottom of the function -- after delinking the vport.  And we
	 * release the other at the completion of the unreg_vpi that get's
	 * initiated after we've disposed of all other resources associated
	 * with the port.
	 */
	if (!FUNC30(shost))
		return VPORT_INVAL;
	if (!FUNC30(shost)) {
		FUNC31(shost);
		return VPORT_INVAL;
	}
	FUNC11(vport);

	FUNC6(vport);

	/*
	 * The call to fc_remove_host might release the NameServer ndlp. Since
	 * we might need to use the ndlp to send the DA_ID CT command,
	 * increment the reference for the NameServer ndlp to prevent it from
	 * being released.
	 */
	ndlp = FUNC10(vport, NameServer_DID);
	if (ndlp && FUNC1(ndlp)) {
		FUNC15(ndlp);
		ns_ndlp_referenced = true;
	}

	/* Remove FC host and then SCSI host with the vport */
	FUNC3(FUNC21(vport));
	FUNC32(FUNC21(vport));

	ndlp = FUNC10(phba->pport, Fabric_DID);

	/* In case of driver unload, we shall not perform fabric logo as the
	 * worker thread already stopped at this stage and, in this case, we
	 * can safely skip the fabric logo.
	 */
	if (phba->pport->load_flag & FC_UNLOADING) {
		if (ndlp && FUNC1(ndlp) &&
		    ndlp->nlp_state == NLP_STE_UNMAPPED_NODE &&
		    phba->link_state >= LPFC_LINK_UP) {
			/* First look for the Fabric ndlp */
			ndlp = FUNC10(vport, Fabric_DID);
			if (!ndlp)
				goto skip_logo;
			else if (!FUNC1(ndlp)) {
				ndlp = FUNC9(vport, ndlp,
							NLP_STE_UNUSED_NODE);
				if (!ndlp)
					goto skip_logo;
			}
			/* Remove ndlp from vport npld list */
			FUNC7(vport, ndlp);

			/* Indicate free memory when release */
			FUNC33(&phba->ndlp_lock);
			FUNC2(ndlp);
			FUNC34(&phba->ndlp_lock);
			/* Kick off release ndlp when it can be safely done */
			FUNC17(ndlp);
		}
		goto skip_logo;
	}

	/* Otherwise, we will perform fabric logo as needed */
	if (ndlp && FUNC1(ndlp) &&
	    ndlp->nlp_state == NLP_STE_UNMAPPED_NODE &&
	    phba->link_state >= LPFC_LINK_UP &&
	    phba->fc_topology != LPFC_TOPOLOGY_LOOP) {
		if (vport->cfg_enable_da_id) {
			timeout = FUNC27(phba->fc_ratov * 2000);
			if (!FUNC18(vport, SLI_CTNS_DA_ID, 0, 0))
				while (vport->ct_flags && timeout)
					timeout = FUNC29(timeout);
			else
				FUNC19(vport->phba, KERN_WARNING,
						LOG_VPORT,
						"1829 CT command failed to "
						"delete objects on fabric\n");
		}
		/* First look for the Fabric ndlp */
		ndlp = FUNC10(vport, Fabric_DID);
		if (!ndlp) {
			/* Cannot find existing Fabric ndlp, allocate one */
			ndlp = FUNC26(phba->nlp_mem_pool, GFP_KERNEL);
			if (!ndlp)
				goto skip_logo;
			FUNC16(vport, ndlp, Fabric_DID);
			/* Indicate free memory when release */
			FUNC2(ndlp);
		} else {
			if (!FUNC1(ndlp)) {
				ndlp = FUNC9(vport, ndlp,
						NLP_STE_UNUSED_NODE);
				if (!ndlp)
					goto skip_logo;
			}

			/* Remove ndlp from vport list */
			FUNC7(vport, ndlp);
			FUNC33(&phba->ndlp_lock);
			if (!FUNC0(ndlp))
				/* Indicate free memory when release */
				FUNC2(ndlp);
			else {
				/* Skip this if ndlp is already in free mode */
				FUNC34(&phba->ndlp_lock);
				goto skip_logo;
			}
			FUNC34(&phba->ndlp_lock);
		}

		/*
		 * If the vpi is not registered, then a valid FDISC doesn't
		 * exist and there is no need for a ELS LOGO.  Just cleanup
		 * the ndlp.
		 */
		if (!(vport->vpi_state & LPFC_VPI_REGISTERED)) {
			FUNC17(ndlp);
			goto skip_logo;
		}

		vport->unreg_vpi_cmpl = VPORT_INVAL;
		timeout = FUNC27(phba->fc_ratov * 2000);
		if (!FUNC13(vport, ndlp))
			while (vport->unreg_vpi_cmpl == VPORT_INVAL && timeout)
				timeout = FUNC29(timeout);
	}

	if (!(phba->pport->load_flag & FC_UNLOADING))
		FUNC8(vport);

skip_logo:

	/*
	 * If the NameServer ndlp has been incremented to allow the DA_ID CT
	 * command to be sent, decrement the ndlp now.
	 */
	if (ns_ndlp_referenced) {
		ndlp = FUNC10(vport, NameServer_DID);
		FUNC17(ndlp);
	}

	FUNC5(vport);
	FUNC22(vport);

	FUNC23(vport);

	if (!(phba->pport->load_flag & FC_UNLOADING)) {
		FUNC24(vport);
		FUNC25(vport);
		/*
		 * Completion of unreg_vpi (lpfc_mbx_cmpl_unreg_vpi)
		 * does the scsi_host_put() to release the vport.
		 */
		if (FUNC14(vport))
			FUNC31(shost);
	} else
		FUNC31(shost);

	FUNC12(phba, vport->vpi);
	vport->work_port_events = 0;
	FUNC33(&phba->hbalock);
	FUNC4(&vport->listentry);
	FUNC34(&phba->hbalock);
	FUNC20(vport, KERN_ERR, LOG_VPORT,
			 "1828 Vport Deleted.\n");
	FUNC31(shost);
	return VPORT_OK;
}