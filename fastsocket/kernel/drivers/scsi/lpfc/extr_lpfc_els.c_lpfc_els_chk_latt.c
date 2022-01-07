
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {scalar_t__ port_state; int fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ link_state; scalar_t__ sli_rev; TYPE_1__* pport; int HAregaddr; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_2__ {int port_state; } ;


 int FC_ABORT_DISCOVERY ;
 int HA_LATT ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 scalar_t__ LPFC_CLEAR_LA ;
 scalar_t__ LPFC_LINK_DOWN ;
 scalar_t__ LPFC_SLI_REV3 ;
 scalar_t__ LPFC_VPORT_READY ;
 int lpfc_issue_clear_la (struct lpfc_hba*,struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_els_chk_latt(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 uint32_t ha_copy;

 if (vport->port_state >= LPFC_VPORT_READY ||
     phba->link_state == LPFC_LINK_DOWN ||
     phba->sli_rev > LPFC_SLI_REV3)
  return 0;


 if (lpfc_readl(phba->HAregaddr, &ha_copy))
  return 1;

 if (!(ha_copy & HA_LATT))
  return 0;


 lpfc_printf_vlog(vport, KERN_ERR, LOG_DISCOVERY,
    "0237 Pending Link Event during "
    "Discovery: State x%x\n",
    phba->pport->port_state);







 spin_lock_irq(shost->host_lock);
 vport->fc_flag |= FC_ABORT_DISCOVERY;
 spin_unlock_irq(shost->host_lock);

 if (phba->link_state != LPFC_CLEAR_LA)
  lpfc_issue_clear_la(phba, vport);

 return 1;
}
