
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int flags; void* req_data; void* result; void* fw_flags; void* seq_number; } ;
struct TYPE_12__ {TYPE_1__ fxiocb; } ;
struct srb_iocb {TYPE_2__ u; } ;
struct req_que {int dummy; } ;
struct qla_mt_iocb_rsp_fx00 {int * reserved_3; int seq_number; int status; int res_count; int reserved_2; int adapid_hi; int adapid; int ioctl_data; int ioctl_flags; int func_type; int reserved_1; } ;
struct ioctl_iocb_entry_fx00 {int * reserved_2; int seq_no; int status; int residuallen; int reserved_1; int adapid_hi; int adapid; int dataword_r; int fw_iotcl_flags; int comp_func_num; int reserved_0; } ;
struct fc_bsg_reply {int dummy; } ;
struct TYPE_17__ {int payload_len; } ;
struct fc_bsg_job {int reply_len; TYPE_7__ reply_payload; TYPE_6__* reply; TYPE_4__* req; } ;
struct TYPE_13__ {struct fc_bsg_job* bsg_job; struct srb_iocb iocb_cmd; } ;
struct TYPE_18__ {scalar_t__ type; int (* done ) (int *,TYPE_8__*,int) ;TYPE_5__* fcport; TYPE_3__ u; } ;
typedef TYPE_8__ srb_t ;
typedef int scsi_qla_host_t ;
struct TYPE_16__ {int result; int reply_payload_rcv_len; } ;
struct TYPE_15__ {int vha; } ;
struct TYPE_14__ {scalar_t__ sense; } ;


 int DID_OK ;
 int SRB_FXDISC_RSP_DWRD_VALID ;
 scalar_t__ SRB_FXIOCB_DCMD ;
 void* le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct qla_mt_iocb_rsp_fx00*,int ,int) ;
 scalar_t__ ql_dbg_user ;
 scalar_t__ ql_dbg_verbose ;
 int ql_dump_buffer (scalar_t__,int ,int,int *,int) ;
 TYPE_8__* qla2x00_get_sp_from_handle (int *,char const*,struct req_que*,struct ioctl_iocb_entry_fx00*) ;
 int stub1 (int *,TYPE_8__*,int) ;

__attribute__((used)) static void
qlafx00_ioctl_iosb_entry(scsi_qla_host_t *vha, struct req_que *req,
    struct ioctl_iocb_entry_fx00 *pkt)
{
 const char func[] = "IOSB_IOCB";
 srb_t *sp;
 struct fc_bsg_job *bsg_job;
 struct srb_iocb *iocb_job;
 int res;
 struct qla_mt_iocb_rsp_fx00 fstatus;
 uint8_t *fw_sts_ptr;

 sp = qla2x00_get_sp_from_handle(vha, func, req, pkt);
 if (!sp)
  return;

 if (sp->type == SRB_FXIOCB_DCMD) {
  iocb_job = &sp->u.iocb_cmd;
  iocb_job->u.fxiocb.seq_number = le32_to_cpu(pkt->seq_no);
  iocb_job->u.fxiocb.fw_flags = le32_to_cpu(pkt->fw_iotcl_flags);
  iocb_job->u.fxiocb.result = le32_to_cpu(pkt->status);
  if (iocb_job->u.fxiocb.flags & SRB_FXDISC_RSP_DWRD_VALID)
   iocb_job->u.fxiocb.req_data =
       le32_to_cpu(pkt->dataword_r);
 } else {
  bsg_job = sp->u.bsg_job;

  memset(&fstatus, 0, sizeof(struct qla_mt_iocb_rsp_fx00));

  fstatus.reserved_1 = pkt->reserved_0;
  fstatus.func_type = pkt->comp_func_num;
  fstatus.ioctl_flags = pkt->fw_iotcl_flags;
  fstatus.ioctl_data = pkt->dataword_r;
  fstatus.adapid = pkt->adapid;
  fstatus.adapid_hi = pkt->adapid_hi;
  fstatus.reserved_2 = pkt->reserved_1;
  fstatus.res_count = pkt->residuallen;
  fstatus.status = pkt->status;
  fstatus.seq_number = pkt->seq_no;
  memcpy(fstatus.reserved_3,
      pkt->reserved_2, 20 * sizeof(uint8_t));

  fw_sts_ptr = ((uint8_t *)bsg_job->req->sense) +
      sizeof(struct fc_bsg_reply);

  memcpy(fw_sts_ptr, (uint8_t *)&fstatus,
      sizeof(struct qla_mt_iocb_rsp_fx00));
  bsg_job->reply_len = sizeof(struct fc_bsg_reply) +
   sizeof(struct qla_mt_iocb_rsp_fx00) + sizeof(uint8_t);

  ql_dump_buffer(ql_dbg_user + ql_dbg_verbose,
      sp->fcport->vha, 0x5080,
      (uint8_t *)pkt, sizeof(struct ioctl_iocb_entry_fx00));

  ql_dump_buffer(ql_dbg_user + ql_dbg_verbose,
      sp->fcport->vha, 0x5074,
      (uint8_t *)fw_sts_ptr, sizeof(struct qla_mt_iocb_rsp_fx00));

  res = bsg_job->reply->result = DID_OK << 16;
  bsg_job->reply->reply_payload_rcv_len =
      bsg_job->reply_payload.payload_len;
 }
 sp->done(vha, sp, res);
}
