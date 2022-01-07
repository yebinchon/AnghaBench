
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int fc_flag; } ;
struct lpfc_nodelist {scalar_t__ nlp_DID; int nlp_state; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_FABRIC ;
 int FC_PUBLIC_LOOP ;
 scalar_t__ Fabric_DID ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_unreg_rpi (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_cmpl_logo_npr_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
   void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);


 if (ndlp->nlp_DID == Fabric_DID) {
  spin_lock_irq(shost->host_lock);
  vport->fc_flag &= ~(FC_FABRIC | FC_PUBLIC_LOOP);
  spin_unlock_irq(shost->host_lock);
 }
 lpfc_unreg_rpi(vport, ndlp);
 return ndlp->nlp_state;
}
