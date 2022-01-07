
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_17__ {int rsp_info_len; int comp_status; } ;
typedef TYPE_6__ sts_entry_t ;
struct req_que {int dummy; } ;
struct fc_bsg_reply {int dummy; } ;
struct TYPE_16__ {void* payload_len; } ;
struct fc_bsg_job {int reply_len; TYPE_5__ reply_payload; TYPE_4__* reply; } ;
struct TYPE_12__ {struct fc_bsg_job* bsg_job; } ;
struct TYPE_18__ {int (* done ) (int *,TYPE_7__*,int) ;TYPE_1__ u; } ;
typedef TYPE_7__ srb_t ;
typedef int scsi_qla_host_t ;
struct TYPE_13__ {int status; } ;
struct TYPE_14__ {TYPE_2__ ctels_reply; } ;
struct TYPE_15__ {void* reply_payload_rcv_len; TYPE_3__ reply_data; } ;


 scalar_t__ CS_COMPLETE ;
 scalar_t__ CS_DATA_UNDERRUN ;
 int DID_ERROR ;
 int DID_OK ;
 int FC_CTELS_STATUS_OK ;
 void* le16_to_cpu (int ) ;
 scalar_t__ ql_dbg_async ;
 scalar_t__ ql_dbg_buffer ;
 int ql_dump_buffer (scalar_t__,int *,int,int *,int) ;
 int ql_log (int ,int *,int,char*,char const*,scalar_t__,...) ;
 int ql_log_warn ;
 TYPE_7__* qla2x00_get_sp_from_handle (int *,char const*,struct req_que*,TYPE_6__*) ;
 int stub1 (int *,TYPE_7__*,int) ;

__attribute__((used)) static void
qla2x00_ct_entry(scsi_qla_host_t *vha, struct req_que *req,
    sts_entry_t *pkt, int iocb_type)
{
 const char func[] = "CT_IOCB";
 const char *type;
 srb_t *sp;
 struct fc_bsg_job *bsg_job;
 uint16_t comp_status;
 int res;

 sp = qla2x00_get_sp_from_handle(vha, func, req, pkt);
 if (!sp)
  return;

 bsg_job = sp->u.bsg_job;

 type = "ct pass-through";

 comp_status = le16_to_cpu(pkt->comp_status);




 bsg_job->reply->reply_data.ctels_reply.status = FC_CTELS_STATUS_OK;
 bsg_job->reply_len = sizeof(struct fc_bsg_reply);

 if (comp_status != CS_COMPLETE) {
  if (comp_status == CS_DATA_UNDERRUN) {
   res = DID_OK << 16;
   bsg_job->reply->reply_payload_rcv_len =
       le16_to_cpu(((sts_entry_t *)pkt)->rsp_info_len);

   ql_log(ql_log_warn, vha, 0x5048,
       "CT pass-through-%s error "
       "comp_status-status=0x%x total_byte = 0x%x.\n",
       type, comp_status,
       bsg_job->reply->reply_payload_rcv_len);
  } else {
   ql_log(ql_log_warn, vha, 0x5049,
       "CT pass-through-%s error "
       "comp_status-status=0x%x.\n", type, comp_status);
   res = DID_ERROR << 16;
   bsg_job->reply->reply_payload_rcv_len = 0;
  }
  ql_dump_buffer(ql_dbg_async + ql_dbg_buffer, vha, 0x5035,
      (uint8_t *)pkt, sizeof(*pkt));
 } else {
  res = DID_OK << 16;
  bsg_job->reply->reply_payload_rcv_len =
      bsg_job->reply_payload.payload_len;
  bsg_job->reply_len = 0;
 }
 sp->done(vha, sp, res);
}
