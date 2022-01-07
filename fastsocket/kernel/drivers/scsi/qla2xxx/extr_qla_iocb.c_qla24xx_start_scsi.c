
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef void* uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_18__ {scalar_t__ process_response_queue; } ;
struct scsi_qla_host {scalar_t__ marker_needed; TYPE_3__ flags; int vp_idx; struct req_que* req; struct qla_hw_data* hw; } ;
struct scsi_cmnd {unsigned char* host_scribble; int cmd_len; int cmnd; TYPE_9__* device; int sc_data_direction; } ;
struct rsp_que {TYPE_4__* ring_ptr; scalar_t__ id; } ;
struct req_que {size_t current_outstanding_cmd; size_t num_outstanding_cmds; scalar_t__ cnt; scalar_t__ ring_index; scalar_t__ length; int req_q_in; scalar_t__ ring_ptr; scalar_t__ ring; int id; TYPE_10__** outstanding_cmds; int * req_q_out; } ;
struct qla_hw_data {int hardware_lock; TYPE_2__* iobase; TYPE_5__* pdev; } ;
struct cmd_type_7 {void** fcp_cdb; void* entry_status; void* entry_count; int byte_count; int task; int lun; int vp_index; int * port_id; void* nport_handle; void* dseg_count; int handle; } ;
struct TYPE_15__ {size_t handle; int flags; TYPE_8__* fcport; } ;
typedef TYPE_10__ srb_t ;
struct TYPE_24__ {int lun; } ;
struct TYPE_21__ {int domain; int area; int al_pa; } ;
struct TYPE_22__ {TYPE_6__ b; } ;
struct TYPE_23__ {scalar_t__ loop_id; struct scsi_qla_host* vha; TYPE_7__ d_id; } ;
struct TYPE_20__ {int dev; } ;
struct TYPE_19__ {scalar_t__ signature; } ;
struct TYPE_16__ {int hccr; } ;
struct TYPE_17__ {TYPE_1__ isp24; } ;


 struct scsi_cmnd* GET_CMD_SP (TYPE_10__*) ;

 int MAKE_HANDLE (int ,size_t) ;
 int MK_SYNC_ALL ;

 int QLA_FUNCTION_FAILED ;
 scalar_t__ QLA_SUCCESS ;
 scalar_t__ RD_REG_DWORD_RELAXED (int *) ;
 scalar_t__ REQUEST_ENTRY_SIZE ;
 scalar_t__ RESPONSE_PROCESSED ;
 int SRB_DMA_VALID ;
 int TSK_HEAD_OF_QUEUE ;
 int TSK_ORDERED ;
 int WRT_REG_DWORD (int ,scalar_t__) ;
 void* cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (size_t) ;
 int dma_map_sg (int *,int ,scalar_t__,int ) ;
 int host_to_fcp_swap (void**,int) ;
 int int_to_scsilun (int ,int *) ;
 int memcpy (void**,int ,int ) ;
 int memset (size_t*,int ,scalar_t__) ;
 int qla24xx_build_scsi_iocbs (TYPE_10__*,struct cmd_type_7*,scalar_t__) ;
 scalar_t__ qla24xx_calc_iocbs (struct scsi_qla_host*,scalar_t__) ;
 int qla24xx_process_response_queue (struct scsi_qla_host*,struct rsp_que*) ;
 int qla25xx_set_que (TYPE_10__*,struct rsp_que**) ;
 scalar_t__ qla2x00_marker (struct scsi_qla_host*,struct req_que*,struct rsp_que*,int ,int ,int ) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 scalar_t__ scsi_populate_tag_msg (struct scsi_cmnd*,char*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

int
qla24xx_start_scsi(srb_t *sp)
{
 int ret, nseg;
 unsigned long flags;
 uint32_t *clr_ptr;
 uint32_t index;
 uint32_t handle;
 struct cmd_type_7 *cmd_pkt;
 uint16_t cnt;
 uint16_t req_cnt;
 uint16_t tot_dsds;
 struct req_que *req = ((void*)0);
 struct rsp_que *rsp = ((void*)0);
 struct scsi_cmnd *cmd = GET_CMD_SP(sp);
 struct scsi_qla_host *vha = sp->fcport->vha;
 struct qla_hw_data *ha = vha->hw;
 char tag[2];


 ret = 0;

 qla25xx_set_que(sp, &rsp);
 req = vha->req;


 tot_dsds = 0;


 if (vha->marker_needed != 0) {
  if (qla2x00_marker(vha, req, rsp, 0, 0, MK_SYNC_ALL) !=
      QLA_SUCCESS)
   return QLA_FUNCTION_FAILED;
  vha->marker_needed = 0;
 }


 spin_lock_irqsave(&ha->hardware_lock, flags);


 handle = req->current_outstanding_cmd;
 for (index = 1; index < req->num_outstanding_cmds; index++) {
  handle++;
  if (handle == req->num_outstanding_cmds)
   handle = 1;
  if (!req->outstanding_cmds[handle])
   break;
 }
 if (index == req->num_outstanding_cmds)
  goto queuing_error;


 if (scsi_sg_count(cmd)) {
  nseg = dma_map_sg(&ha->pdev->dev, scsi_sglist(cmd),
      scsi_sg_count(cmd), cmd->sc_data_direction);
  if (unlikely(!nseg))
   goto queuing_error;
 } else
  nseg = 0;

 tot_dsds = nseg;
 req_cnt = qla24xx_calc_iocbs(vha, tot_dsds);
 if (req->cnt < (req_cnt + 2)) {
  cnt = RD_REG_DWORD_RELAXED(req->req_q_out);

  if (req->ring_index < cnt)
   req->cnt = cnt - req->ring_index;
  else
   req->cnt = req->length -
    (req->ring_index - cnt);
  if (req->cnt < (req_cnt + 2))
   goto queuing_error;
 }


 req->current_outstanding_cmd = handle;
 req->outstanding_cmds[handle] = sp;
 sp->handle = handle;
 cmd->host_scribble = (unsigned char *)(unsigned long)handle;
 req->cnt -= req_cnt;

 cmd_pkt = (struct cmd_type_7 *)req->ring_ptr;
 cmd_pkt->handle = MAKE_HANDLE(req->id, handle);



 clr_ptr = (uint32_t *)cmd_pkt + 2;
 memset(clr_ptr, 0, REQUEST_ENTRY_SIZE - 8);
 cmd_pkt->dseg_count = cpu_to_le16(tot_dsds);


 cmd_pkt->nport_handle = cpu_to_le16(sp->fcport->loop_id);
 cmd_pkt->port_id[0] = sp->fcport->d_id.b.al_pa;
 cmd_pkt->port_id[1] = sp->fcport->d_id.b.area;
 cmd_pkt->port_id[2] = sp->fcport->d_id.b.domain;
 cmd_pkt->vp_index = sp->fcport->vha->vp_idx;

 int_to_scsilun(cmd->device->lun, &cmd_pkt->lun);
 host_to_fcp_swap((uint8_t *)&cmd_pkt->lun, sizeof(cmd_pkt->lun));


 if (scsi_populate_tag_msg(cmd, tag)) {
  switch (tag[0]) {
  case 129:
   cmd_pkt->task = TSK_HEAD_OF_QUEUE;
   break;
  case 128:
   cmd_pkt->task = TSK_ORDERED;
   break;
  }
 }


 memcpy(cmd_pkt->fcp_cdb, cmd->cmnd, cmd->cmd_len);
 host_to_fcp_swap(cmd_pkt->fcp_cdb, sizeof(cmd_pkt->fcp_cdb));

 cmd_pkt->byte_count = cpu_to_le32((uint32_t)scsi_bufflen(cmd));


 qla24xx_build_scsi_iocbs(sp, cmd_pkt, tot_dsds);


 cmd_pkt->entry_count = (uint8_t)req_cnt;

 cmd_pkt->entry_status = (uint8_t) rsp->id;
 wmb();

 req->ring_index++;
 if (req->ring_index == req->length) {
  req->ring_index = 0;
  req->ring_ptr = req->ring;
 } else
  req->ring_ptr++;

 sp->flags |= SRB_DMA_VALID;


 WRT_REG_DWORD(req->req_q_in, req->ring_index);
 RD_REG_DWORD_RELAXED(&ha->iobase->isp24.hccr);


 if (vha->flags.process_response_queue &&
  rsp->ring_ptr->signature != RESPONSE_PROCESSED)
  qla24xx_process_response_queue(vha, rsp);

 spin_unlock_irqrestore(&ha->hardware_lock, flags);
 return QLA_SUCCESS;

queuing_error:
 if (tot_dsds)
  scsi_dma_unmap(cmd);

 spin_unlock_irqrestore(&ha->hardware_lock, flags);

 return QLA_FUNCTION_FAILED;
}
