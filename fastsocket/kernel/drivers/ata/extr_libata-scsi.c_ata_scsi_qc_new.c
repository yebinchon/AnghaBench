
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; } ;
struct ata_queued_cmd {void (* scsidone ) (struct scsi_cmnd*) ;int n_elem; int sg; struct scsi_cmnd* scsicmd; } ;
struct ata_device {int dummy; } ;


 int DID_OK ;
 int QUEUE_FULL ;
 struct ata_queued_cmd* ata_qc_new_init (struct ata_device*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;

__attribute__((used)) static struct ata_queued_cmd *ata_scsi_qc_new(struct ata_device *dev,
           struct scsi_cmnd *cmd,
           void (*done)(struct scsi_cmnd *))
{
 struct ata_queued_cmd *qc;

 qc = ata_qc_new_init(dev);
 if (qc) {
  qc->scsicmd = cmd;
  qc->scsidone = done;

  qc->sg = scsi_sglist(cmd);
  qc->n_elem = scsi_sg_count(cmd);
 } else {
  cmd->result = (DID_OK << 16) | (QUEUE_FULL << 1);
  done(cmd);
 }

 return qc;
}
