
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct scsi_cmnd {int cmd_len; int * cmnd; TYPE_1__* device; int result; int * sense_buffer; } ;
struct asc_board {TYPE_2__* adv_reqp; } ;
struct TYPE_11__ {struct TYPE_11__* next_reqp; int * sgblkp; struct scsi_cmnd* cmndp; int scsi_req_q; } ;
typedef TYPE_2__ adv_req_t ;
struct TYPE_13__ {int sg_tablesize; } ;
struct TYPE_12__ {int cdb_len; void* data_cnt; scalar_t__ sg_real_addr; int * sg_list_ptr; scalar_t__ data_addr; int * vdata_addr; int sense_len; void* sense_addr; int target_lun; int target_id; int * cdb16; int * cdb; int srb_ptr; scalar_t__ done_status; scalar_t__ scsi_cntl; scalar_t__ cntl; } ;
struct TYPE_10__ {TYPE_6__* host; int lun; int id; } ;
typedef TYPE_3__ ADV_SCSI_REQ_Q ;


 scalar_t__ ADV_32BALIGN (int *) ;
 int ADV_MAX_SG_LIST ;
 int ADV_SUCCESS ;
 int ADV_VADDR_TO_U32 (TYPE_2__*) ;
 int ASC_BUSY ;
 int ASC_DBG (int,char*) ;
 int ASC_DBG_PRT_ADV_SCSI_REQ_Q (int,TYPE_3__*) ;
 int ASC_DBG_PRT_CDB (int,int *,int) ;
 int ASC_ERROR ;
 int ASC_NOERROR ;
 int ASC_STATS (TYPE_6__*,int ) ;
 int ASC_STATS_ADD (TYPE_6__*,int ,int) ;
 int DID_ERROR ;
 int HOST_BYTE (int ) ;
 int KERN_ERR ;
 int SCSI_SENSE_BUFFERSIZE ;
 int adv_build_noreq ;
 int adv_get_sglist (struct asc_board*,TYPE_2__*,struct scsi_cmnd*,int) ;
 void* cpu_to_le32 (int ) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int,int ) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_map (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int virt_to_bus (int *) ;
 int xfer_cnt ;
 int xfer_elem ;

__attribute__((used)) static int
adv_build_req(struct asc_board *boardp, struct scsi_cmnd *scp,
       ADV_SCSI_REQ_Q **adv_scsiqpp)
{
 adv_req_t *reqp;
 ADV_SCSI_REQ_Q *scsiqp;
 int i;
 int ret;
 int use_sg;





 if (boardp->adv_reqp == ((void*)0)) {
  ASC_DBG(1, "no free adv_req_t\n");
  ASC_STATS(scp->device->host, adv_build_noreq);
  return ASC_BUSY;
 } else {
  reqp = boardp->adv_reqp;
  boardp->adv_reqp = reqp->next_reqp;
  reqp->next_reqp = ((void*)0);
 }




 scsiqp = (ADV_SCSI_REQ_Q *)ADV_32BALIGN(&reqp->scsi_req_q);




 scsiqp->cntl = scsiqp->scsi_cntl = scsiqp->done_status = 0;




 scsiqp->srb_ptr = ADV_VADDR_TO_U32(reqp);




 reqp->cmndp = scp;






 scsiqp->cdb_len = scp->cmd_len;

 for (i = 0; i < scp->cmd_len && i < 12; i++) {
  scsiqp->cdb[i] = scp->cmnd[i];
 }

 for (; i < scp->cmd_len; i++) {
  scsiqp->cdb16[i - 12] = scp->cmnd[i];
 }

 scsiqp->target_id = scp->device->id;
 scsiqp->target_lun = scp->device->lun;

 scsiqp->sense_addr = cpu_to_le32(virt_to_bus(&scp->sense_buffer[0]));
 scsiqp->sense_len = SCSI_SENSE_BUFFERSIZE;



 use_sg = scsi_dma_map(scp);
 if (use_sg == 0) {

  reqp->sgblkp = ((void*)0);
  scsiqp->data_cnt = 0;
  scsiqp->vdata_addr = ((void*)0);

  scsiqp->data_addr = 0;
  scsiqp->sg_list_ptr = ((void*)0);
  scsiqp->sg_real_addr = 0;
 } else {
  if (use_sg > ADV_MAX_SG_LIST) {
   scmd_printk(KERN_ERR, scp, "use_sg %d > "
       "ADV_MAX_SG_LIST %d\n", use_sg,
       scp->device->host->sg_tablesize);
   scsi_dma_unmap(scp);
   scp->result = HOST_BYTE(DID_ERROR);





   reqp->next_reqp = boardp->adv_reqp;
   boardp->adv_reqp = reqp;

   return ASC_ERROR;
  }

  scsiqp->data_cnt = cpu_to_le32(scsi_bufflen(scp));

  ret = adv_get_sglist(boardp, reqp, scp, use_sg);
  if (ret != ADV_SUCCESS) {




   reqp->next_reqp = boardp->adv_reqp;
   boardp->adv_reqp = reqp;

   return ret;
  }

  ASC_STATS_ADD(scp->device->host, xfer_elem, use_sg);
 }

 ASC_STATS(scp->device->host, xfer_cnt);

 ASC_DBG_PRT_ADV_SCSI_REQ_Q(2, scsiqp);
 ASC_DBG_PRT_CDB(1, scp->cmnd, scp->cmd_len);

 *adv_scsiqpp = scsiqp;

 return ASC_NOERROR;
}
