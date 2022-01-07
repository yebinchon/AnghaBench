
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_scsi_cmd {scalar_t__ act_len; scalar_t__ len; scalar_t__ key; int error; struct ub_request* back; struct ub_lun* lun; } ;
struct ub_request {struct request* rq; } ;
struct ub_lun {TYPE_1__* disk; } ;
struct ub_dev {scalar_t__* top_sense; } ;
struct request {scalar_t__ cmd_type; scalar_t__ resid_len; int sense_len; int sense; } ;
struct TYPE_2__ {int queue; } ;


 int DID_ERROR ;
 int EIO ;
 scalar_t__ MEDIUM_ERROR ;
 scalar_t__ REQ_TYPE_BLOCK_PC ;
 unsigned int SAM_STAT_CHECK_CONDITION ;
 int UB_SENSE_SIZE ;
 scalar_t__ UNIT_ATTENTION ;
 int blk_start_queue (int ) ;
 int memcpy (int ,scalar_t__*,int ) ;
 int ub_end_rq (struct request*,unsigned int) ;
 int ub_put_cmd (struct ub_lun*,struct ub_scsi_cmd*) ;
 scalar_t__ ub_rw_cmd_retry (struct ub_dev*,struct ub_lun*,struct ub_request*,struct ub_scsi_cmd*) ;

__attribute__((used)) static void ub_rw_cmd_done(struct ub_dev *sc, struct ub_scsi_cmd *cmd)
{
 struct ub_lun *lun = cmd->lun;
 struct ub_request *urq = cmd->back;
 struct request *rq;
 unsigned int scsi_status;

 rq = urq->rq;

 if (cmd->error == 0) {
  if (rq->cmd_type == REQ_TYPE_BLOCK_PC) {
   if (cmd->act_len >= rq->resid_len)
    rq->resid_len = 0;
   else
    rq->resid_len -= cmd->act_len;
   scsi_status = 0;
  } else {
   if (cmd->act_len != cmd->len) {
    scsi_status = SAM_STAT_CHECK_CONDITION;
   } else {
    scsi_status = 0;
   }
  }
 } else {
  if (rq->cmd_type == REQ_TYPE_BLOCK_PC) {

   memcpy(rq->sense, sc->top_sense, UB_SENSE_SIZE);
   rq->sense_len = UB_SENSE_SIZE;
   if (sc->top_sense[0] != 0)
    scsi_status = SAM_STAT_CHECK_CONDITION;
   else
    scsi_status = DID_ERROR << 16;
  } else {
   if (cmd->error == -EIO &&
       (cmd->key == 0 ||
        cmd->key == MEDIUM_ERROR ||
        cmd->key == UNIT_ATTENTION)) {
    if (ub_rw_cmd_retry(sc, lun, urq, cmd) == 0)
     return;
   }
   scsi_status = SAM_STAT_CHECK_CONDITION;
  }
 }

 urq->rq = ((void*)0);

 ub_put_cmd(lun, cmd);
 ub_end_rq(rq, scsi_status);
 blk_start_queue(lun->disk->queue);
}
