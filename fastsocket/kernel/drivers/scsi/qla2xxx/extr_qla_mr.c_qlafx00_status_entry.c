
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct sts_entry_fx00 {size_t handle; int* data; int residual_len; int sense_len; int scsi_status; int comp_status; } ;
struct scsi_cmnd {unsigned int underflow; int * cmnd; TYPE_1__* device; int sense_buffer; } ;
struct rsp_que {int * status_srb; } ;
struct req_que {size_t num_outstanding_cmds; TYPE_2__** outstanding_cmds; } ;
struct qla_hw_data {struct req_que** req_q_map; } ;
struct TYPE_16__ {scalar_t__ type; int (* done ) (struct qla_hw_data*,TYPE_2__*,int) ;TYPE_4__* fcport; } ;
typedef TYPE_2__ srb_t ;
struct TYPE_17__ {int host_no; int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
typedef size_t int32_t ;
struct TYPE_18__ {int tgt_id; int vha; int state; } ;
typedef TYPE_4__ fc_port_t ;
struct TYPE_15__ {int lun; int id; } ;




 size_t CS_DATA_OVERRUN ;
 int DID_ERROR ;
 int DID_OK ;
 int DID_RESET ;
 int DID_TRANSPORT_DISRUPTED ;
 int FCS_ONLINE ;
 struct scsi_cmnd* GET_CMD_SP (TYPE_2__*) ;
 int ISP_ABORT_NEEDED ;
 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int IS_QLAFX00 (struct qla_hw_data*) ;
 size_t LSW (size_t) ;
 size_t MSW (size_t) ;
 int SAM_STAT_BUSY ;
 int SAM_STAT_TASK_SET_FULL ;
 int SCSI_SENSE_BUFFERSIZE ;
 scalar_t__ SRB_TM_CMD ;
 int SS_CHECK_CONDITION ;
 size_t SS_MASK ;
 size_t SS_RESIDUAL_OVER ;
 size_t SS_RESIDUAL_UNDER ;
 size_t SS_SENSE_LEN_VALID ;
 size_t STATUS_MASK ;
 int atomic_read (int *) ;
 size_t le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 int memset (int ,int ,int ) ;
 int ql_dbg (int ,TYPE_3__*,int,char*,...) ;
 int ql_dbg_io ;
 int qla2x00_mark_device_lost (int ,TYPE_4__*,int,int) ;
 int qla2x00_process_completed_request (TYPE_3__*,struct req_que*,size_t) ;
 int qla2xxx_wake_dpc (TYPE_3__*) ;
 int qlafx00_handle_sense (TYPE_2__*,int*,size_t,size_t,struct rsp_que*,int) ;
 int qlafx00_tm_iocb_entry (TYPE_3__*,struct req_que*,void*,TYPE_2__*,size_t,size_t) ;
 size_t scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,size_t) ;
 int set_bit (int ,int *) ;
 int stub1 (struct qla_hw_data*,TYPE_2__*,int) ;

__attribute__((used)) static void
qlafx00_status_entry(scsi_qla_host_t *vha, struct rsp_que *rsp, void *pkt)
{
 srb_t *sp;
 fc_port_t *fcport;
 struct scsi_cmnd *cp;
 struct sts_entry_fx00 *sts;
 uint16_t comp_status;
 uint16_t scsi_status;
 uint16_t ox_id;
 uint8_t lscsi_status;
 int32_t resid;
 uint32_t sense_len, par_sense_len, rsp_info_len, resid_len,
     fw_resid_len;
 uint8_t *rsp_info = ((void*)0), *sense_data = ((void*)0);
 struct qla_hw_data *ha = vha->hw;
 uint32_t hindex, handle;
 uint16_t que;
 struct req_que *req;
 int logit = 1;
 int res = 0;

 sts = (struct sts_entry_fx00 *) pkt;

 comp_status = le16_to_cpu(sts->comp_status);
 scsi_status = le16_to_cpu(sts->scsi_status) & SS_MASK;
 hindex = sts->handle;
 handle = LSW(hindex);

 que = MSW(hindex);
 req = ha->req_q_map[que];


 if (handle < req->num_outstanding_cmds)
  sp = req->outstanding_cmds[handle];
 else
  sp = ((void*)0);

 if (sp == ((void*)0)) {
  ql_dbg(ql_dbg_io, vha, 0x3034,
      "Invalid status handle (0x%x).\n", handle);

  set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  qla2xxx_wake_dpc(vha);
  return;
 }

 if (sp->type == SRB_TM_CMD) {
  req->outstanding_cmds[handle] = ((void*)0);
  qlafx00_tm_iocb_entry(vha, req, pkt, sp,
      scsi_status, comp_status);
  return;
 }


 if (comp_status == 137 && scsi_status == 0) {
  qla2x00_process_completed_request(vha, req, handle);
  return;
 }

 req->outstanding_cmds[handle] = ((void*)0);
 cp = GET_CMD_SP(sp);
 if (cp == ((void*)0)) {
  ql_dbg(ql_dbg_io, vha, 0x3048,
      "Command already returned (0x%x/%p).\n",
      handle, sp);

  return;
 }

 lscsi_status = scsi_status & STATUS_MASK;

 fcport = sp->fcport;

 ox_id = 0;
 sense_len = par_sense_len = rsp_info_len = resid_len =
  fw_resid_len = 0;
 if (scsi_status & SS_SENSE_LEN_VALID)
  sense_len = le32_to_cpu(sts->sense_len);
 if (scsi_status & (SS_RESIDUAL_UNDER | SS_RESIDUAL_OVER))
  resid_len = le32_to_cpu(sts->residual_len);
 if (comp_status == 136)
  fw_resid_len = le32_to_cpu(sts->residual_len);
 rsp_info = sense_data = sts->data;
 par_sense_len = sizeof(sts->data);


 if (comp_status == 137 &&
     scsi_status & SS_RESIDUAL_OVER)
  comp_status = CS_DATA_OVERRUN;




 switch (comp_status) {
 case 137:
 case 130:
  if (scsi_status == 0) {
   res = DID_OK << 16;
   break;
  }
  if (scsi_status & (SS_RESIDUAL_UNDER | SS_RESIDUAL_OVER)) {
   resid = resid_len;
   scsi_set_resid(cp, resid);

   if (!lscsi_status &&
       ((unsigned)(scsi_bufflen(cp) - resid) <
        cp->underflow)) {
    ql_dbg(ql_dbg_io, fcport->vha, 0x3050,
        "Mid-layer underflow "
        "detected (0x%x of 0x%x bytes).\n",
        resid, scsi_bufflen(cp));

    res = DID_ERROR << 16;
    break;
   }
  }
  res = DID_OK << 16 | lscsi_status;

  if (lscsi_status == SAM_STAT_TASK_SET_FULL) {
   ql_dbg(ql_dbg_io, fcport->vha, 0x3051,
       "QUEUE FULL detected.\n");
   break;
  }
  logit = 0;
  if (lscsi_status != SS_CHECK_CONDITION)
   break;

  memset(cp->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
  if (!(scsi_status & SS_SENSE_LEN_VALID))
   break;

  qlafx00_handle_sense(sp, sense_data, par_sense_len, sense_len,
      rsp, res);
  break;

 case 136:

  if (IS_FWI2_CAPABLE(ha) || IS_QLAFX00(ha))
   resid = fw_resid_len;
  else
   resid = resid_len;
  scsi_set_resid(cp, resid);
  if (scsi_status & SS_RESIDUAL_UNDER) {
   if ((IS_FWI2_CAPABLE(ha) || IS_QLAFX00(ha))
       && fw_resid_len != resid_len) {
    ql_dbg(ql_dbg_io, fcport->vha, 0x3052,
        "Dropped frame(s) detected "
        "(0x%x of 0x%x bytes).\n",
        resid, scsi_bufflen(cp));

    res = DID_ERROR << 16 | lscsi_status;
    goto check_scsi_status;
   }

   if (!lscsi_status &&
       ((unsigned)(scsi_bufflen(cp) - resid) <
       cp->underflow)) {
    ql_dbg(ql_dbg_io, fcport->vha, 0x3053,
        "Mid-layer underflow "
        "detected (0x%x of 0x%x bytes, "
        "cp->underflow: 0x%x).\n",
        resid, scsi_bufflen(cp), cp->underflow);

    res = DID_ERROR << 16;
    break;
   }
  } else if (lscsi_status != SAM_STAT_TASK_SET_FULL &&
       lscsi_status != SAM_STAT_BUSY) {





   ql_dbg(ql_dbg_io, fcport->vha, 0x3054,
       "Dropped frame(s) detected (0x%x "
       "of 0x%x bytes).\n", resid,
       scsi_bufflen(cp));

   res = DID_ERROR << 16 | lscsi_status;
   goto check_scsi_status;
  } else {
   ql_dbg(ql_dbg_io, fcport->vha, 0x3055,
       "scsi_status: 0x%x, lscsi_status: 0x%x\n",
       scsi_status, lscsi_status);
  }

  res = DID_OK << 16 | lscsi_status;
  logit = 0;

check_scsi_status:




  if (lscsi_status != 0) {
   if (lscsi_status == SAM_STAT_TASK_SET_FULL) {
    ql_dbg(ql_dbg_io, fcport->vha, 0x3056,
        "QUEUE FULL detected.\n");
    logit = 1;
    break;
   }
   if (lscsi_status != SS_CHECK_CONDITION)
    break;

   memset(cp->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
   if (!(scsi_status & SS_SENSE_LEN_VALID))
    break;

   qlafx00_handle_sense(sp, sense_data, par_sense_len,
       sense_len, rsp, res);
  }
  break;

 case 132:
 case 133:
 case 134:
 case 135:
 case 131:
 case 128:
 case 129:






  res = DID_TRANSPORT_DISRUPTED << 16;

  ql_dbg(ql_dbg_io, fcport->vha, 0x3057,
      "Port down status: port-state=0x%x.\n",
      atomic_read(&fcport->state));

  if (atomic_read(&fcport->state) == FCS_ONLINE)
   qla2x00_mark_device_lost(fcport->vha, fcport, 1, 1);
  break;

 case 138:
  res = DID_RESET << 16;
  break;

 default:
  res = DID_ERROR << 16;
  break;
 }

 if (logit)
  ql_dbg(ql_dbg_io, fcport->vha, 0x3058,
      "FCP command status: 0x%x-0x%x (0x%x) "
      "nexus=%ld:%d:%d tgt_id: 0x%x lscsi_status: 0x%x"
      "cdb=%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x len=0x%x "
      "rsp_info=0x%x resid=0x%x fw_resid=0x%x "
      "sense_len=0x%x, par_sense_len=0x%x, rsp_info_len=0x%x\n",
      comp_status, scsi_status, res, vha->host_no,
      cp->device->id, cp->device->lun, fcport->tgt_id,
      lscsi_status, cp->cmnd[0], cp->cmnd[1], cp->cmnd[2],
      cp->cmnd[3], cp->cmnd[4], cp->cmnd[5], cp->cmnd[6],
      cp->cmnd[7], cp->cmnd[8], cp->cmnd[9], scsi_bufflen(cp),
      rsp_info_len, resid_len, fw_resid_len, sense_len,
      par_sense_len, rsp_info_len);

 if (rsp->status_srb == ((void*)0))
  sp->done(ha, sp, res);
}
