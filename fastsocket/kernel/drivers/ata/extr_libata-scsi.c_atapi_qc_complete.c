
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {int* cmnd; void* result; } ;
struct ata_queued_cmd {unsigned int err_mask; int flags; scalar_t__* cdb; int (* scsidone ) (struct scsi_cmnd*) ;struct scsi_cmnd* scsicmd; TYPE_4__* dev; TYPE_2__* ap; } ;
struct TYPE_8__ {TYPE_3__* sdev; } ;
struct TYPE_7__ {scalar_t__ locked; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {scalar_t__ error_handler; } ;


 unsigned int AC_ERR_DEV ;
 scalar_t__ ALLOW_MEDIUM_REMOVAL ;
 int ATA_QCFLAG_SENSE_VALID ;
 int INQUIRY ;
 void* SAM_STAT_CHECK_CONDITION ;
 void* SAM_STAT_GOOD ;
 int VPRINTK (char*,unsigned int) ;
 int ata_gen_passthru_sense (struct ata_queued_cmd*) ;
 int ata_qc_free (struct ata_queued_cmd*) ;
 int* ata_scsi_rbuf_get (struct scsi_cmnd*,int,unsigned long*) ;
 int ata_scsi_rbuf_put (struct scsi_cmnd*,int,unsigned long*) ;
 int atapi_request_sense (struct ata_queued_cmd*) ;
 int stub1 (struct scsi_cmnd*) ;
 int stub2 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void atapi_qc_complete(struct ata_queued_cmd *qc)
{
 struct scsi_cmnd *cmd = qc->scsicmd;
 unsigned int err_mask = qc->err_mask;

 VPRINTK("ENTER, err_mask 0x%X\n", err_mask);


 if (unlikely(qc->ap->ops->error_handler &&
       (err_mask || qc->flags & ATA_QCFLAG_SENSE_VALID))) {

  if (!(qc->flags & ATA_QCFLAG_SENSE_VALID)) {





   ata_gen_passthru_sense(qc);
  }
  if (qc->cdb[0] == ALLOW_MEDIUM_REMOVAL)
   qc->dev->sdev->locked = 0;

  qc->scsicmd->result = SAM_STAT_CHECK_CONDITION;
  qc->scsidone(cmd);
  ata_qc_free(qc);
  return;
 }


 if (unlikely(err_mask & AC_ERR_DEV)) {
  cmd->result = SAM_STAT_CHECK_CONDITION;
  atapi_request_sense(qc);
  return;
 } else if (unlikely(err_mask)) {





  ata_gen_passthru_sense(qc);
 } else {
  u8 *scsicmd = cmd->cmnd;

  if ((scsicmd[0] == INQUIRY) && ((scsicmd[1] & 0x03) == 0)) {
   unsigned long flags;
   u8 *buf;

   buf = ata_scsi_rbuf_get(cmd, 1, &flags);
   if (buf[2] == 0) {
    buf[2] = 0x5;
    buf[3] = 0x32;
   }

   ata_scsi_rbuf_put(cmd, 1, &flags);
  }

  cmd->result = SAM_STAT_GOOD;
 }

 qc->scsidone(cmd);
 ata_qc_free(qc);
}
