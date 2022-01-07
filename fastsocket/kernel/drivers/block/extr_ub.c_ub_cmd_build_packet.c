
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd {int nsg; int cdb_len; int timeo; scalar_t__ len; int cdb; int * sgv; int dir; } ;
struct ub_request {int nsg; int sgv; struct request* rq; } ;
struct ub_lun {int dummy; } ;
struct ub_dev {int dummy; } ;
struct scatterlist {int dummy; } ;
struct request {int cmd_len; int timeout; int cmd; } ;


 int UB_DIR_NONE ;
 int UB_DIR_READ ;
 int UB_DIR_WRITE ;
 scalar_t__ WRITE ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static void ub_cmd_build_packet(struct ub_dev *sc, struct ub_lun *lun,
    struct ub_scsi_cmd *cmd, struct ub_request *urq)
{
 struct request *rq = urq->rq;

 if (blk_rq_bytes(rq) == 0) {
  cmd->dir = UB_DIR_NONE;
 } else {
  if (rq_data_dir(rq) == WRITE)
   cmd->dir = UB_DIR_WRITE;
  else
   cmd->dir = UB_DIR_READ;
 }

 cmd->nsg = urq->nsg;
 memcpy(cmd->sgv, urq->sgv, sizeof(struct scatterlist) * cmd->nsg);

 memcpy(&cmd->cdb, rq->cmd, rq->cmd_len);
 cmd->cdb_len = rq->cmd_len;

 cmd->len = blk_rq_bytes(rq);





 cmd->timeo = rq->timeout;
}
