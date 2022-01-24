#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct lpfc_vport {int /*<<< orphan*/  listentry; TYPE_4__ delayed_disc_tmo; TYPE_4__ els_tmofunc; TYPE_4__ fc_fdmitmo; TYPE_4__ fc_disctmo; int /*<<< orphan*/  work_port_lock; int /*<<< orphan*/  rcv_buffer_list; int /*<<< orphan*/  fc_nodes; int /*<<< orphan*/  port_type; int /*<<< orphan*/  cfg_max_luns; scalar_t__ fc_rscn_flush; int /*<<< orphan*/  fc_flag; int /*<<< orphan*/  load_flag; struct lpfc_hba* phba; } ;
struct TYPE_5__ {scalar_t__ sge_supp_len; } ;
struct TYPE_6__ {TYPE_1__ pc_sli4_params; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  port_list; TYPE_3__* pcidev; scalar_t__ cfg_hba_queue_depth; int /*<<< orphan*/  cfg_sg_seg_cnt; TYPE_2__ sli4_hba; } ;
struct device {int dummy; } ;
struct Scsi_Host {int unique_id; int this_id; int max_cmd_len; int /*<<< orphan*/  transportt; scalar_t__ can_queue; int /*<<< orphan*/  sg_tablesize; scalar_t__ dma_boundary; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_id; scalar_t__ hostdata; } ;
struct TYPE_7__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_LOADING ; 
 int /*<<< orphan*/  FC_VPORT_NEEDS_REG_VPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LPFC_MAX_TARGET ; 
 int /*<<< orphan*/  LPFC_NPIV_PORT ; 
 int /*<<< orphan*/  LPFC_PHYSICAL_PORT ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpfc_delayed_disc_tmo ; 
 int /*<<< orphan*/  lpfc_disc_timeout ; 
 int /*<<< orphan*/  lpfc_els_timeout ; 
 int /*<<< orphan*/  lpfc_fdmi_tmo ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  lpfc_template ; 
 int /*<<< orphan*/  lpfc_transport_template ; 
 int /*<<< orphan*/  lpfc_vport_template ; 
 int /*<<< orphan*/  lpfc_vport_transport_template ; 
 int FUNC4 (struct Scsi_Host*,struct device*,struct device*) ; 
 struct Scsi_Host* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct lpfc_vport *
FUNC10(struct lpfc_hba *phba, int instance, struct device *dev)
{
	struct lpfc_vport *vport;
	struct Scsi_Host  *shost;
	int error = 0;

	if (dev != &phba->pcidev->dev)
		shost = FUNC5(&lpfc_vport_template,
					sizeof(struct lpfc_vport));
	else
		shost = FUNC5(&lpfc_template,
					sizeof(struct lpfc_vport));
	if (!shost)
		goto out;

	vport = (struct lpfc_vport *) shost->hostdata;
	vport->phba = phba;
	vport->load_flag |= FC_LOADING;
	vport->fc_flag |= FC_VPORT_NEEDS_REG_VPI;
	vport->fc_rscn_flush = 0;

	FUNC3(vport);
	shost->unique_id = instance;
	shost->max_id = LPFC_MAX_TARGET;
	shost->max_lun = vport->cfg_max_luns;
	shost->this_id = -1;
	shost->max_cmd_len = 16;
	if (phba->sli_rev == LPFC_SLI_REV4) {
		shost->dma_boundary =
			phba->sli4_hba.pc_sli4_params.sge_supp_len-1;
		shost->sg_tablesize = phba->cfg_sg_seg_cnt;
	}

	/*
	 * Set initial can_queue value since 0 is no longer supported and
	 * scsi_add_host will fail. This will be adjusted later based on the
	 * max xri value determined in hba setup.
	 */
	shost->can_queue = phba->cfg_hba_queue_depth - 10;
	if (dev != &phba->pcidev->dev) {
		shost->transportt = lpfc_vport_transport_template;
		vport->port_type = LPFC_NPIV_PORT;
	} else {
		shost->transportt = lpfc_transport_template;
		vport->port_type = LPFC_PHYSICAL_PORT;
	}

	/* Initialize all internally managed lists. */
	FUNC0(&vport->fc_nodes);
	FUNC0(&vport->rcv_buffer_list);
	FUNC7(&vport->work_port_lock);

	FUNC1(&vport->fc_disctmo);
	vport->fc_disctmo.function = lpfc_disc_timeout;
	vport->fc_disctmo.data = (unsigned long)vport;

	FUNC1(&vport->fc_fdmitmo);
	vport->fc_fdmitmo.function = lpfc_fdmi_tmo;
	vport->fc_fdmitmo.data = (unsigned long)vport;

	FUNC1(&vport->els_tmofunc);
	vport->els_tmofunc.function = lpfc_els_timeout;
	vport->els_tmofunc.data = (unsigned long)vport;

	FUNC1(&vport->delayed_disc_tmo);
	vport->delayed_disc_tmo.function = lpfc_delayed_disc_tmo;
	vport->delayed_disc_tmo.data = (unsigned long)vport;

	error = FUNC4(shost, dev, &phba->pcidev->dev);
	if (error)
		goto out_put_shost;

	FUNC8(&phba->hbalock);
	FUNC2(&vport->listentry, &phba->port_list);
	FUNC9(&phba->hbalock);
	return vport;

out_put_shost:
	FUNC6(shost);
out:
	return NULL;
}