
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_flag; int fc_adisc_cnt; int fc_plogi_cnt; int port_state; int work_port_lock; int work_port_events; int fc_disctmo; int fc_ns_retry; } ;
struct Scsi_Host {int * host_lock; } ;


 int FC_DISC_TMO ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int WORKER_DISC_TMO ;
 int del_timer_sync (int *) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
lpfc_can_disctmo(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 unsigned long iflags;

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "can disc timer:  state:x%x rtry:x%x flg:x%x",
  vport->port_state, vport->fc_ns_retry, vport->fc_flag);


 if (vport->fc_flag & FC_DISC_TMO) {
  spin_lock_irqsave(shost->host_lock, iflags);
  vport->fc_flag &= ~FC_DISC_TMO;
  spin_unlock_irqrestore(shost->host_lock, iflags);
  del_timer_sync(&vport->fc_disctmo);
  spin_lock_irqsave(&vport->work_port_lock, iflags);
  vport->work_port_events &= ~WORKER_DISC_TMO;
  spin_unlock_irqrestore(&vport->work_port_lock, iflags);
 }


 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "0248 Cancel Discovery Timer state x%x "
    "Data: x%x x%x x%x\n",
    vport->port_state, vport->fc_flag,
    vport->fc_plogi_cnt, vport->fc_adisc_cnt);
 return 0;
}
