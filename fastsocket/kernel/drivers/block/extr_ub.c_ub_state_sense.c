
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd {scalar_t__* cdb; int cdb_len; int nsg; int state; scalar_t__ tag; struct ub_scsi_cmd* back; int done; int lun; void* len; struct scatterlist* sgv; int dir; } ;
struct ub_dev {int tagcnt; scalar_t__ top_sense; struct ub_scsi_cmd top_rqs_cmd; } ;
struct scatterlist {int dummy; } ;


 int EPIPE ;
 int PAGE_SIZE ;
 scalar_t__ REQUEST_SENSE ;
 int UB_CMDST_INIT ;
 int UB_CMDST_SENSE ;
 int UB_DIR_READ ;
 int UB_MAX_REQ_SG ;
 void* UB_SENSE_SIZE ;
 int memset (struct ub_scsi_cmd*,int ,int) ;
 int sg_init_table (struct scatterlist*,int ) ;
 int sg_set_page (struct scatterlist*,int ,void*,unsigned long) ;
 int ub_cmdq_insert (struct ub_dev*,struct ub_scsi_cmd*) ;
 int ub_state_done (struct ub_dev*,struct ub_scsi_cmd*,int) ;
 int ub_top_sense_done ;
 int virt_to_page (scalar_t__) ;

__attribute__((used)) static void ub_state_sense(struct ub_dev *sc, struct ub_scsi_cmd *cmd)
{
 struct ub_scsi_cmd *scmd;
 struct scatterlist *sg;
 int rc;

 if (cmd->cdb[0] == REQUEST_SENSE) {
  rc = -EPIPE;
  goto error;
 }

 scmd = &sc->top_rqs_cmd;
 memset(scmd, 0, sizeof(struct ub_scsi_cmd));
 scmd->cdb[0] = REQUEST_SENSE;
 scmd->cdb[4] = UB_SENSE_SIZE;
 scmd->cdb_len = 6;
 scmd->dir = UB_DIR_READ;
 scmd->state = UB_CMDST_INIT;
 scmd->nsg = 1;
 sg = &scmd->sgv[0];
 sg_init_table(sg, UB_MAX_REQ_SG);
 sg_set_page(sg, virt_to_page(sc->top_sense), UB_SENSE_SIZE,
   (unsigned long)sc->top_sense & (PAGE_SIZE-1));
 scmd->len = UB_SENSE_SIZE;
 scmd->lun = cmd->lun;
 scmd->done = ub_top_sense_done;
 scmd->back = cmd;

 scmd->tag = sc->tagcnt++;

 cmd->state = UB_CMDST_SENSE;

 ub_cmdq_insert(sc, scmd);
 return;

error:
 ub_state_done(sc, cmd, rc);
}
