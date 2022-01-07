
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_27__ {int scsi_status; int comp_status; } ;
typedef TYPE_9__ sts_entry_t ;
struct sts_entry_24xx {int scsi_status; int comp_status; } ;
struct req_que {size_t num_outstanding_cmds; int id; TYPE_10__** outstanding_cmds; } ;
struct qla_hw_data {int dummy; } ;
struct fc_bsg_reply {int dummy; } ;
struct TYPE_23__ {scalar_t__ payload_len; } ;
struct fc_bsg_job {int reply_len; TYPE_8__* reply; TYPE_5__ reply_payload; TYPE_4__* request; } ;
struct TYPE_19__ {struct fc_bsg_job* bsg_job; } ;
struct TYPE_17__ {int (* done ) (TYPE_11__*,TYPE_10__*,int) ;TYPE_1__ u; } ;
typedef TYPE_10__ srb_t ;
struct TYPE_18__ {int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_11__ scsi_qla_host_t ;
struct TYPE_24__ {size_t* vendor_rsp; } ;
struct TYPE_25__ {TYPE_6__ vendor_reply; } ;
struct TYPE_26__ {TYPE_7__ reply_data; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_20__ {int* vendor_cmd; } ;
struct TYPE_21__ {TYPE_2__ h_vendor; } ;
struct TYPE_22__ {TYPE_3__ rqst_data; } ;
 int DID_OK ;
 size_t EXT_STATUS_DATA_OVERRUN ;
 size_t EXT_STATUS_DATA_UNDERRUN ;
 size_t EXT_STATUS_DMA_ERR ;
 size_t EXT_STATUS_ERR ;
 size_t EXT_STATUS_OK ;
 size_t EXT_STATUS_TIMEOUT ;
 int ISP_ABORT_NEEDED ;
 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int SS_MASK ;
 int le16_to_cpu (int ) ;
 int ql_dbg (int ,TYPE_11__*,int,char*,int,...) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_11__*,int,char*,size_t,...) ;
 int ql_log_warn ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_11__*,TYPE_10__*,int) ;

__attribute__((used)) static void
qla25xx_process_bidir_status_iocb(scsi_qla_host_t *vha, void *pkt, struct req_que *req, uint32_t index)
{
 struct qla_hw_data *ha = vha->hw;
 srb_t *sp;
 uint16_t comp_status;
 uint16_t scsi_status;
 uint16_t thread_id;
 uint32_t rval = EXT_STATUS_OK;
 struct fc_bsg_job *bsg_job = ((void*)0);
 sts_entry_t *sts;
 struct sts_entry_24xx *sts24;
 sts = (sts_entry_t *) pkt;
 sts24 = (struct sts_entry_24xx *) pkt;


 if (index >= req->num_outstanding_cmds) {
  ql_log(ql_log_warn, vha, 0x70af,
      "Invalid SCSI completion handle 0x%x.\n", index);
  set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  return;
 }

 sp = req->outstanding_cmds[index];
 if (sp) {

  req->outstanding_cmds[index] = ((void*)0);
  bsg_job = sp->u.bsg_job;
 } else {
  ql_log(ql_log_warn, vha, 0x70b0,
      "Req:%d: Invalid ISP SCSI completion handle(0x%x)\n",
      req->id, index);

  set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  return;
 }

 if (IS_FWI2_CAPABLE(ha)) {
  comp_status = le16_to_cpu(sts24->comp_status);
  scsi_status = le16_to_cpu(sts24->scsi_status) & SS_MASK;
 } else {
  comp_status = le16_to_cpu(sts->comp_status);
  scsi_status = le16_to_cpu(sts->scsi_status) & SS_MASK;
 }

 thread_id = bsg_job->request->rqst_data.h_vendor.vendor_cmd[1];
 switch (comp_status) {
 case 131:
  if (scsi_status == 0) {
   bsg_job->reply->reply_payload_rcv_len =
     bsg_job->reply_payload.payload_len;
   rval = EXT_STATUS_OK;
  }
  goto done;

 case 130:
  ql_dbg(ql_dbg_user, vha, 0x70b1,
      "Command completed with date overrun thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_DATA_OVERRUN;
  break;

 case 129:
  ql_dbg(ql_dbg_user, vha, 0x70b2,
      "Command completed with date underrun thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_DATA_UNDERRUN;
  break;
 case 137:
  ql_dbg(ql_dbg_user, vha, 0x70b3,
      "Command completed with read data overrun thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_DATA_OVERRUN;
  break;

 case 133:
  ql_dbg(ql_dbg_user, vha, 0x70b4,
      "Command completed with read and write data overrun "
      "thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_OVERRUN;
  break;

 case 136:
  ql_dbg(ql_dbg_user, vha, 0x70b5,
      "Command completed with read data over and write data "
      "underrun thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_OVERRUN;
  break;

 case 135:
  ql_dbg(ql_dbg_user, vha, 0x70b6,
      "Command completed with read data data underrun "
      "thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_UNDERRUN;
  break;

 case 134:
  ql_dbg(ql_dbg_user, vha, 0x70b7,
      "Command completed with read data under and write data "
      "overrun thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_UNDERRUN;
  break;

 case 132:
  ql_dbg(ql_dbg_user, vha, 0x70b8,
      "Command completed with read and write data underrun "
      "thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_UNDERRUN;
  break;

 case 138:
  ql_dbg(ql_dbg_user, vha, 0x70b9,
      "Command completed with data DMA error thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_DMA_ERR;
  break;

 case 128:
  ql_dbg(ql_dbg_user, vha, 0x70ba,
      "Command completed with timeout thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_TIMEOUT;
  break;
 default:
  ql_dbg(ql_dbg_user, vha, 0x70bb,
      "Command completed with completion status=0x%x "
      "thread_id=%d\n", comp_status, thread_id);
  rval = EXT_STATUS_ERR;
  break;
 }
  bsg_job->reply->reply_payload_rcv_len = 0;

done:

        bsg_job->reply->reply_data.vendor_reply.vendor_rsp[0] = rval;
        bsg_job->reply_len = sizeof(struct fc_bsg_reply);


 sp->done(vha, sp, (DID_OK << 6));

}
