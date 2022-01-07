
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct ata_queued_cmd {int tag; int scsidone; struct scsi_cmnd* scsicmd; struct ata_port* ap; } ;
struct ata_port {int eh_done_q; int lock; } ;


 int WARN_ON (int ) ;
 int __ata_qc_complete (struct ata_queued_cmd*) ;
 int ata_eh_scsidone ;
 int ata_tag_valid (int ) ;
 int scsi_eh_finish_cmd (struct scsi_cmnd*,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void __ata_eh_qc_complete(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct scsi_cmnd *scmd = qc->scsicmd;
 unsigned long flags;

 spin_lock_irqsave(ap->lock, flags);
 qc->scsidone = ata_eh_scsidone;
 __ata_qc_complete(qc);
 WARN_ON(ata_tag_valid(qc->tag));
 spin_unlock_irqrestore(ap->lock, flags);

 scsi_eh_finish_cmd(scmd, &ap->eh_done_q);
}
