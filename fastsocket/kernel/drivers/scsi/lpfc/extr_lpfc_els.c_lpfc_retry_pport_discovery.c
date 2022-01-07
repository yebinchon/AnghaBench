
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_nodelist {int nlp_last_elscmd; int nlp_flag; int nlp_delayfunc; } ;
struct lpfc_hba {TYPE_1__* pport; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_3__ {int port_state; } ;


 int ELS_CMD_FLOGI ;
 int Fabric_DID ;
 int LPFC_FLOGI ;
 int NLP_DELAY_TMO ;
 scalar_t__ jiffies ;
 int lpfc_cancel_all_vport_retry_delay_timer (struct lpfc_hba*) ;
 struct lpfc_nodelist* lpfc_findnode_did (TYPE_1__*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (TYPE_1__*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_retry_pport_discovery(struct lpfc_hba *phba)
{
 struct lpfc_nodelist *ndlp;
 struct Scsi_Host *shost;


 lpfc_cancel_all_vport_retry_delay_timer(phba);


 ndlp = lpfc_findnode_did(phba->pport, Fabric_DID);
 if (!ndlp)
  return;

 shost = lpfc_shost_from_vport(phba->pport);
 mod_timer(&ndlp->nlp_delayfunc, jiffies + msecs_to_jiffies(1000));
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag |= NLP_DELAY_TMO;
 spin_unlock_irq(shost->host_lock);
 ndlp->nlp_last_elscmd = ELS_CMD_FLOGI;
 phba->pport->port_state = LPFC_FLOGI;
 return;
}
