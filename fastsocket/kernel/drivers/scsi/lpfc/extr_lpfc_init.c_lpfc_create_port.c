
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned long data; int function; } ;
struct lpfc_vport {int listentry; TYPE_4__ delayed_disc_tmo; TYPE_4__ els_tmofunc; TYPE_4__ fc_fdmitmo; TYPE_4__ fc_disctmo; int work_port_lock; int rcv_buffer_list; int fc_nodes; int port_type; int cfg_max_luns; scalar_t__ fc_rscn_flush; int fc_flag; int load_flag; struct lpfc_hba* phba; } ;
struct TYPE_5__ {scalar_t__ sge_supp_len; } ;
struct TYPE_6__ {TYPE_1__ pc_sli4_params; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hbalock; int port_list; TYPE_3__* pcidev; scalar_t__ cfg_hba_queue_depth; int cfg_sg_seg_cnt; TYPE_2__ sli4_hba; } ;
struct device {int dummy; } ;
struct Scsi_Host {int unique_id; int this_id; int max_cmd_len; int transportt; scalar_t__ can_queue; int sg_tablesize; scalar_t__ dma_boundary; int max_lun; int max_id; scalar_t__ hostdata; } ;
struct TYPE_7__ {struct device dev; } ;


 int FC_LOADING ;
 int FC_VPORT_NEEDS_REG_VPI ;
 int INIT_LIST_HEAD (int *) ;
 int LPFC_MAX_TARGET ;
 int LPFC_NPIV_PORT ;
 int LPFC_PHYSICAL_PORT ;
 scalar_t__ LPFC_SLI_REV4 ;
 int init_timer (TYPE_4__*) ;
 int list_add_tail (int *,int *) ;
 int lpfc_delayed_disc_tmo ;
 int lpfc_disc_timeout ;
 int lpfc_els_timeout ;
 int lpfc_fdmi_tmo ;
 int lpfc_get_vport_cfgparam (struct lpfc_vport*) ;
 int lpfc_template ;
 int lpfc_transport_template ;
 int lpfc_vport_template ;
 int lpfc_vport_transport_template ;
 int scsi_add_host_with_dma (struct Scsi_Host*,struct device*,struct device*) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

struct lpfc_vport *
lpfc_create_port(struct lpfc_hba *phba, int instance, struct device *dev)
{
 struct lpfc_vport *vport;
 struct Scsi_Host *shost;
 int error = 0;

 if (dev != &phba->pcidev->dev)
  shost = scsi_host_alloc(&lpfc_vport_template,
     sizeof(struct lpfc_vport));
 else
  shost = scsi_host_alloc(&lpfc_template,
     sizeof(struct lpfc_vport));
 if (!shost)
  goto out;

 vport = (struct lpfc_vport *) shost->hostdata;
 vport->phba = phba;
 vport->load_flag |= FC_LOADING;
 vport->fc_flag |= FC_VPORT_NEEDS_REG_VPI;
 vport->fc_rscn_flush = 0;

 lpfc_get_vport_cfgparam(vport);
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






 shost->can_queue = phba->cfg_hba_queue_depth - 10;
 if (dev != &phba->pcidev->dev) {
  shost->transportt = lpfc_vport_transport_template;
  vport->port_type = LPFC_NPIV_PORT;
 } else {
  shost->transportt = lpfc_transport_template;
  vport->port_type = LPFC_PHYSICAL_PORT;
 }


 INIT_LIST_HEAD(&vport->fc_nodes);
 INIT_LIST_HEAD(&vport->rcv_buffer_list);
 spin_lock_init(&vport->work_port_lock);

 init_timer(&vport->fc_disctmo);
 vport->fc_disctmo.function = lpfc_disc_timeout;
 vport->fc_disctmo.data = (unsigned long)vport;

 init_timer(&vport->fc_fdmitmo);
 vport->fc_fdmitmo.function = lpfc_fdmi_tmo;
 vport->fc_fdmitmo.data = (unsigned long)vport;

 init_timer(&vport->els_tmofunc);
 vport->els_tmofunc.function = lpfc_els_timeout;
 vport->els_tmofunc.data = (unsigned long)vport;

 init_timer(&vport->delayed_disc_tmo);
 vport->delayed_disc_tmo.function = lpfc_delayed_disc_tmo;
 vport->delayed_disc_tmo.data = (unsigned long)vport;

 error = scsi_add_host_with_dma(shost, dev, &phba->pcidev->dev);
 if (error)
  goto out_put_shost;

 spin_lock_irq(&phba->hbalock);
 list_add_tail(&vport->listentry, &phba->port_list);
 spin_unlock_irq(&phba->hbalock);
 return vport;

out_put_shost:
 scsi_host_put(shost);
out:
 return ((void*)0);
}
