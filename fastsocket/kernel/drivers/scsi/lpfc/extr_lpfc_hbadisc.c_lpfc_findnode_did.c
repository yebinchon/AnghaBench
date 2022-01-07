
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 struct lpfc_nodelist* __lpfc_findnode_did (struct lpfc_vport*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

struct lpfc_nodelist *
lpfc_findnode_did(struct lpfc_vport *vport, uint32_t did)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_nodelist *ndlp;
 unsigned long iflags;

 spin_lock_irqsave(shost->host_lock, iflags);
 ndlp = __lpfc_findnode_did(vport, did);
 spin_unlock_irqrestore(shost->host_lock, iflags);
 return ndlp;
}
