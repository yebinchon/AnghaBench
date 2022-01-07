
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 struct lpfc_nodelist* __lpfc_findnode_rpi (struct lpfc_vport*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

struct lpfc_nodelist *
lpfc_findnode_rpi(struct lpfc_vport *vport, uint16_t rpi)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_nodelist *ndlp;

 spin_lock_irq(shost->host_lock);
 ndlp = __lpfc_findnode_rpi(vport, rpi);
 spin_unlock_irq(shost->host_lock);
 return ndlp;
}
