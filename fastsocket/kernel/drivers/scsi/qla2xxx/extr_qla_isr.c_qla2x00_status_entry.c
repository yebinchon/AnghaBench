
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_21__ {int* rsp_info; int* req_sense_data; int status_flags; int residual_length; int rsp_info_len; int req_sense_length; int handle; int scsi_status; int comp_status; } ;
typedef TYPE_4__ sts_entry_t ;
struct sts_entry_24xx {int* data; int ox_id; int residual_len; int rsp_residual_count; int rsp_data_len; int sense_len; int state_flags; int scsi_status; int comp_status; } ;
struct scsi_cmnd {unsigned int underflow; int result; int * cmnd; TYPE_1__* device; int sense_buffer; } ;
struct rsp_que {int * status_srb; } ;
struct req_que {size_t num_outstanding_cmds; TYPE_5__** outstanding_cmds; } ;
struct qla_hw_data {int max_req_queues; int req_qid_map; struct req_que** req_q_map; } ;
struct TYPE_22__ {scalar_t__ type; int (* done ) (struct qla_hw_data*,TYPE_5__*,int) ;TYPE_7__* fcport; } ;
typedef TYPE_5__ srb_t ;
struct TYPE_23__ {int host_no; int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_6__ scsi_qla_host_t ;
typedef size_t int32_t ;
struct TYPE_19__ {int al_pa; int area; int domain; } ;
struct TYPE_20__ {TYPE_2__ b; } ;
struct TYPE_24__ {TYPE_3__ d_id; int vha; int state; } ;
typedef TYPE_7__ fc_port_t ;
struct TYPE_18__ {int lun; int id; int vendor; } ;


 size_t BIT_1 ;
 size_t BIT_4 ;


 size_t CS_DATA_OVERRUN ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_OK ;
 int DID_RESET ;
 int DID_TRANSPORT_DISRUPTED ;
 int FCOE_CTX_RESET_NEEDED ;
 int FCS_ONLINE ;
 struct scsi_cmnd* GET_CMD_SP (TYPE_5__*) ;
 int ISP_ABORT_NEEDED ;
 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int IS_PI_SPLIT_DET_CAPABLE (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int KERN_WARNING ;
 scalar_t__ LSW (int ) ;
 size_t MSW (int ) ;
 int SAM_STAT_BUSY ;
 int SAM_STAT_TASK_SET_FULL ;
 int SCSI_SENSE_BUFFERSIZE ;
 size_t SF_LOGOUT_SENT ;
 scalar_t__ SRB_BIDI_CMD ;
 int SS_CHECK_CONDITION ;
 size_t SS_MASK ;
 size_t SS_RESIDUAL_OVER ;
 size_t SS_RESIDUAL_UNDER ;
 size_t SS_RESPONSE_INFO_LEN_VALID ;
 size_t SS_SENSE_LEN_VALID ;
 size_t STATUS_MASK ;
 int atomic_read (int *) ;
 size_t find_first_zero_bit (int ,int ) ;
 int host_to_fcp_swap (int*,int) ;
 size_t le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 int memset (int ,int ,int ) ;
 int ql_dbg (int ,TYPE_6__*,int,char*,...) ;
 int ql_dbg_io ;
 int qla25xx_process_bidir_status_iocb (TYPE_6__*,void*,struct req_que*,size_t) ;
 int qla2x00_handle_dif_error (TYPE_5__*,struct sts_entry_24xx*) ;
 int qla2x00_handle_sense (TYPE_5__*,int*,size_t,size_t,struct rsp_que*,int) ;
 int qla2x00_mark_device_lost (int ,TYPE_7__*,int,int) ;
 int qla2x00_process_completed_request (TYPE_6__*,struct req_que*,size_t) ;
 int qla2xxx_wake_dpc (TYPE_6__*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ) ;
 size_t scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,size_t) ;
 int set_bit (int ,int *) ;
 int stub1 (struct qla_hw_data*,TYPE_5__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
qla2x00_status_entry(scsi_qla_host_t *vha, struct rsp_que *rsp, void *pkt)
{
 srb_t *sp;
 fc_port_t *fcport;
 struct scsi_cmnd *cp;
 sts_entry_t *sts;
 struct sts_entry_24xx *sts24;
 uint16_t comp_status;
 uint16_t scsi_status;
 uint16_t ox_id;
 uint8_t lscsi_status;
 int32_t resid;
 uint32_t sense_len, par_sense_len, rsp_info_len, resid_len,
     fw_resid_len;
 uint8_t *rsp_info, *sense_data;
 struct qla_hw_data *ha = vha->hw;
 uint32_t handle;
 uint16_t que;
 struct req_que *req;
 int logit = 1;
 int res = 0;
 uint16_t state_flags = 0;

 sts = (sts_entry_t *) pkt;
 sts24 = (struct sts_entry_24xx *) pkt;
 if (IS_FWI2_CAPABLE(ha)) {
  comp_status = le16_to_cpu(sts24->comp_status);
  scsi_status = le16_to_cpu(sts24->scsi_status) & SS_MASK;
  state_flags = le16_to_cpu(sts24->state_flags);
 } else {
  comp_status = le16_to_cpu(sts->comp_status);
  scsi_status = le16_to_cpu(sts->scsi_status) & SS_MASK;
 }
 handle = (uint32_t) LSW(sts->handle);
 que = MSW(sts->handle);
 req = ha->req_q_map[que];


 if (req == ((void*)0) ||
     que >= find_first_zero_bit(ha->req_qid_map, ha->max_req_queues)) {
  ql_dbg(ql_dbg_io, vha, 0x3059,
      "Invalid status handle (0x%x): Bad req pointer. req=%p, "
      "que=%u.\n", sts->handle, req, que);
  return;
 }


 if (handle < req->num_outstanding_cmds)
  sp = req->outstanding_cmds[handle];
 else
  sp = ((void*)0);

 if (sp == ((void*)0)) {
  ql_dbg(ql_dbg_io, vha, 0x3017,
      "Invalid status handle (0x%x).\n", sts->handle);

  if (IS_QLA82XX(ha))
   set_bit(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags);
  else
   set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  qla2xxx_wake_dpc(vha);
  return;
 }

 if (unlikely((state_flags & BIT_1) && (sp->type == SRB_BIDI_CMD))) {
  qla25xx_process_bidir_status_iocb(vha, pkt, req, handle);
  return;
 }


 if (comp_status == 139 && scsi_status == 0) {
  qla2x00_process_completed_request(vha, req, handle);

  return;
 }

 req->outstanding_cmds[handle] = ((void*)0);
 cp = GET_CMD_SP(sp);
 if (cp == ((void*)0)) {
  ql_dbg(ql_dbg_io, vha, 0x3018,
      "Command already returned (0x%x/%p).\n",
      sts->handle, sp);

  return;
 }

 lscsi_status = scsi_status & STATUS_MASK;

 fcport = sp->fcport;

 ox_id = 0;
 sense_len = par_sense_len = rsp_info_len = resid_len =
  fw_resid_len = 0;
 if (IS_FWI2_CAPABLE(ha)) {
  if (scsi_status & SS_SENSE_LEN_VALID)
   sense_len = le32_to_cpu(sts24->sense_len);
  if (scsi_status & SS_RESPONSE_INFO_LEN_VALID)
   rsp_info_len = le32_to_cpu(sts24->rsp_data_len);
  if (scsi_status & (SS_RESIDUAL_UNDER | SS_RESIDUAL_OVER))
   resid_len = le32_to_cpu(sts24->rsp_residual_count);
  if (comp_status == 138)
   fw_resid_len = le32_to_cpu(sts24->residual_len);
  rsp_info = sts24->data;
  sense_data = sts24->data;
  host_to_fcp_swap(sts24->data, sizeof(sts24->data));
  ox_id = le16_to_cpu(sts24->ox_id);
  par_sense_len = sizeof(sts24->data);
 } else {
  if (scsi_status & SS_SENSE_LEN_VALID)
   sense_len = le16_to_cpu(sts->req_sense_length);
  if (scsi_status & SS_RESPONSE_INFO_LEN_VALID)
   rsp_info_len = le16_to_cpu(sts->rsp_info_len);
  resid_len = le32_to_cpu(sts->residual_length);
  rsp_info = sts->rsp_info;
  sense_data = sts->req_sense_data;
  par_sense_len = sizeof(sts->req_sense_data);
 }


 if (scsi_status & SS_RESPONSE_INFO_LEN_VALID) {

  if (IS_FWI2_CAPABLE(ha)) {
   sense_data += rsp_info_len;
   par_sense_len -= rsp_info_len;
  }
  if (rsp_info_len > 3 && rsp_info[3]) {
   ql_dbg(ql_dbg_io, fcport->vha, 0x3019,
       "FCP I/O protocol failure (0x%x/0x%x).\n",
       rsp_info_len, rsp_info[3]);

   res = DID_BUS_BUSY << 16;
   goto out;
  }
 }


 if (IS_FWI2_CAPABLE(ha) && comp_status == 139 &&
     scsi_status & SS_RESIDUAL_OVER)
  comp_status = CS_DATA_OVERRUN;




 switch (comp_status) {
 case 139:
 case 131:
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
    ql_dbg(ql_dbg_io, fcport->vha, 0x301a,
        "Mid-layer underflow "
        "detected (0x%x of 0x%x bytes).\n",
        resid, scsi_bufflen(cp));

    res = DID_ERROR << 16;
    break;
   }
  }
  res = DID_OK << 16 | lscsi_status;

  if (lscsi_status == SAM_STAT_TASK_SET_FULL) {
   ql_dbg(ql_dbg_io, fcport->vha, 0x301b,
       "QUEUE FULL detected.\n");
   break;
  }
  logit = 0;
  if (lscsi_status != SS_CHECK_CONDITION)
   break;

  memset(cp->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
  if (!(scsi_status & SS_SENSE_LEN_VALID))
   break;

  qla2x00_handle_sense(sp, sense_data, par_sense_len, sense_len,
      rsp, res);
  break;

 case 138:

  resid = IS_FWI2_CAPABLE(ha) ? fw_resid_len : resid_len;
  scsi_set_resid(cp, resid);
  if (scsi_status & SS_RESIDUAL_UNDER) {
   if (IS_FWI2_CAPABLE(ha) && fw_resid_len != resid_len) {
    ql_dbg(ql_dbg_io, fcport->vha, 0x301d,
        "Dropped frame(s) detected "
        "(0x%x of 0x%x bytes).\n",
        resid, scsi_bufflen(cp));

    res = DID_ERROR << 16 | lscsi_status;
    goto check_scsi_status;
   }

   if (!lscsi_status &&
       ((unsigned)(scsi_bufflen(cp) - resid) <
       cp->underflow)) {
    ql_dbg(ql_dbg_io, fcport->vha, 0x301e,
        "Mid-layer underflow "
        "detected (0x%x of 0x%x bytes).\n",
        resid, scsi_bufflen(cp));

    res = DID_ERROR << 16;
    break;
   }
  } else if (lscsi_status != SAM_STAT_TASK_SET_FULL &&
       lscsi_status != SAM_STAT_BUSY) {





   ql_dbg(ql_dbg_io, fcport->vha, 0x301f,
       "Dropped frame(s) detected (0x%x "
       "of 0x%x bytes).\n", resid,
       scsi_bufflen(cp));

   res = DID_ERROR << 16 | lscsi_status;
   goto check_scsi_status;
  } else {
   ql_dbg(ql_dbg_io, fcport->vha, 0x3030,
       "scsi_status: 0x%x, lscsi_status: 0x%x\n",
       scsi_status, lscsi_status);
  }

  res = DID_OK << 16 | lscsi_status;
  logit = 0;

check_scsi_status:




  if (lscsi_status != 0) {
   if (lscsi_status == SAM_STAT_TASK_SET_FULL) {
    ql_dbg(ql_dbg_io, fcport->vha, 0x3020,
        "QUEUE FULL detected.\n");
    logit = 1;
    break;
   }
   if (lscsi_status != SS_CHECK_CONDITION)
    break;

   memset(cp->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
   if (!(scsi_status & SS_SENSE_LEN_VALID))
    break;

   qla2x00_handle_sense(sp, sense_data, par_sense_len,
       sense_len, rsp, res);
  }
  break;

 case 133:
 case 134:
 case 135:
 case 136:
 case 132:
 case 129:
 case 130:






  res = DID_TRANSPORT_DISRUPTED << 16;

  if (comp_status == 129) {
   if (IS_FWI2_CAPABLE(ha))
    break;
   else if ((le16_to_cpu(sts->status_flags) &
       SF_LOGOUT_SENT) == 0)
    break;
  }

  ql_dbg(ql_dbg_io, fcport->vha, 0x3021,
      "Port down status: port-state=0x%x.\n",
      atomic_read(&fcport->state));

  if (atomic_read(&fcport->state) == FCS_ONLINE)
   qla2x00_mark_device_lost(fcport->vha, fcport, 1, 1);
  break;

 case 140:
  res = DID_RESET << 16;
  break;

 case 137:
  logit = qla2x00_handle_dif_error(sp, sts24);
  res = cp->result;
  break;

 case 128:
  res = DID_ERROR << 16;

  if (!IS_PI_SPLIT_DET_CAPABLE(ha))
   break;

  if (state_flags & BIT_4)
   scmd_printk(KERN_WARNING, cp,
       "Unsupported device '%s' found.\n",
       cp->device->vendor);
  break;

 default:
  res = DID_ERROR << 16;
  break;
 }

out:
 if (logit)
  ql_dbg(ql_dbg_io, fcport->vha, 0x3022,
      "FCP command status: 0x%x-0x%x (0x%x) "
      "nexus=%ld:%d:%d portid=%02x%02x%02x oxid=0x%x "
      "cdb=%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x len=0x%x "
      "rsp_info=0x%x resid=0x%x fw_resid=0x%x.\n",
      comp_status, scsi_status, res, vha->host_no,
      cp->device->id, cp->device->lun, fcport->d_id.b.domain,
      fcport->d_id.b.area, fcport->d_id.b.al_pa, ox_id,
      cp->cmnd[0], cp->cmnd[1], cp->cmnd[2], cp->cmnd[3],
      cp->cmnd[4], cp->cmnd[5], cp->cmnd[6], cp->cmnd[7],
      cp->cmnd[8], cp->cmnd[9], scsi_bufflen(cp), rsp_info_len,
      resid_len, fw_resid_len);

 if (rsp->status_srb == ((void*)0))
  sp->done(ha, sp, res);
}
