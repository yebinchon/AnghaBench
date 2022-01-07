
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_unused_cnt; int fc_plogi_cnt; int fc_adisc_cnt; int fc_reglogin_cnt; int fc_prli_cnt; int fc_unmap_cnt; int fc_map_cnt; int fc_npr_cnt; } ;
struct Scsi_Host {int host_lock; } ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_nlp_counters(struct lpfc_vport *vport, int state, int count)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 spin_lock_irq(shost->host_lock);
 switch (state) {
 case 128:
  vport->fc_unused_cnt += count;
  break;
 case 132:
  vport->fc_plogi_cnt += count;
  break;
 case 135:
  vport->fc_adisc_cnt += count;
  break;
 case 130:
  vport->fc_reglogin_cnt += count;
  break;
 case 131:
  vport->fc_prli_cnt += count;
  break;
 case 129:
  vport->fc_unmap_cnt += count;
  break;
 case 134:
  vport->fc_map_cnt += count;
  break;
 case 133:
  vport->fc_npr_cnt += count;
  break;
 }
 spin_unlock_irq(shost->host_lock);
}
