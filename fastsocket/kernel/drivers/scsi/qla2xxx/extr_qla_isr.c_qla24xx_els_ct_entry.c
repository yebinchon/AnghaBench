
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct sts_entry_24xx {int comp_status; } ;
struct req_que {int dummy; } ;
struct fc_bsg_reply {int dummy; } ;
struct TYPE_16__ {void* payload_len; } ;
struct fc_bsg_job {int reply_len; TYPE_6__ reply_payload; TYPE_5__* reply; TYPE_4__* req; } ;
struct els_sts_entry_24xx {int error_subcode_2; int error_subcode_1; int total_byte_count; } ;
struct TYPE_11__ {struct fc_bsg_job* bsg_job; } ;
struct TYPE_17__ {int type; int (* done ) (int *,TYPE_7__*,int ) ;int handle; TYPE_1__ u; } ;
typedef TYPE_7__ srb_t ;
typedef int scsi_qla_host_t ;
typedef int fw_status ;
struct TYPE_12__ {int status; } ;
struct TYPE_13__ {TYPE_2__ ctels_reply; } ;
struct TYPE_15__ {void* reply_payload_rcv_len; TYPE_3__ reply_data; } ;
struct TYPE_14__ {scalar_t__ sense; } ;


 scalar_t__ CS_COMPLETE ;
 scalar_t__ CS_DATA_UNDERRUN ;
 int DID_ERROR ;
 int DID_OK ;
 int FC_CTELS_STATUS_OK ;



 void* le16_to_cpu (int ) ;
 int memcpy (int *,scalar_t__*,int) ;
 int ql_dbg (scalar_t__,int *,int,char*,char const*,int ,scalar_t__,void*,void*,...) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_user ;
 int ql_dump_buffer (scalar_t__,int *,int,int *,int) ;
 int ql_log (int ,int *,int,char*,TYPE_7__*,int) ;
 int ql_log_warn ;
 TYPE_7__* qla2x00_get_sp_from_handle (int *,char const*,struct req_que*,struct sts_entry_24xx*) ;
 int stub1 (int *,TYPE_7__*,int ) ;

__attribute__((used)) static void
qla24xx_els_ct_entry(scsi_qla_host_t *vha, struct req_que *req,
    struct sts_entry_24xx *pkt, int iocb_type)
{
 const char func[] = "ELS_CT_IOCB";
 const char *type;
 srb_t *sp;
 struct fc_bsg_job *bsg_job;
 uint16_t comp_status;
 uint32_t fw_status[3];
 uint8_t* fw_sts_ptr;
 int res;

 sp = qla2x00_get_sp_from_handle(vha, func, req, pkt);
 if (!sp)
  return;
 bsg_job = sp->u.bsg_job;

 type = ((void*)0);
 switch (sp->type) {
 case 128:
 case 129:
  type = "els";
  break;
 case 130:
  type = "ct pass-through";
  break;
 default:
  ql_log(ql_log_warn, vha, 0x503e,
      "Unrecognized SRB: (%p) type=%d.\n", sp, sp->type);
  return;
 }

 comp_status = fw_status[0] = le16_to_cpu(pkt->comp_status);
 fw_status[1] = le16_to_cpu(((struct els_sts_entry_24xx*)pkt)->error_subcode_1);
 fw_status[2] = le16_to_cpu(((struct els_sts_entry_24xx*)pkt)->error_subcode_2);




 bsg_job->reply->reply_data.ctels_reply.status = FC_CTELS_STATUS_OK;
 bsg_job->reply_len = sizeof(struct fc_bsg_reply) + sizeof(fw_status);

 if (comp_status != CS_COMPLETE) {
  if (comp_status == CS_DATA_UNDERRUN) {
   res = DID_OK << 16;
   bsg_job->reply->reply_payload_rcv_len =
       le16_to_cpu(((struct els_sts_entry_24xx*)pkt)->total_byte_count);

   ql_dbg(ql_dbg_user, vha, 0x503f,
       "ELS-CT pass-through-%s error hdl=%x comp_status-status=0x%x "
       "error subcode 1=0x%x error subcode 2=0x%x total_byte = 0x%x.\n",
       type, sp->handle, comp_status, fw_status[1], fw_status[2],
       le16_to_cpu(((struct els_sts_entry_24xx *)
    pkt)->total_byte_count));
   fw_sts_ptr = ((uint8_t*)bsg_job->req->sense) + sizeof(struct fc_bsg_reply);
   memcpy( fw_sts_ptr, fw_status, sizeof(fw_status));
  }
  else {
   ql_dbg(ql_dbg_user, vha, 0x5040,
       "ELS-CT pass-through-%s error hdl=%x comp_status-status=0x%x "
       "error subcode 1=0x%x error subcode 2=0x%x.\n",
       type, sp->handle, comp_status,
       le16_to_cpu(((struct els_sts_entry_24xx *)
    pkt)->error_subcode_1),
       le16_to_cpu(((struct els_sts_entry_24xx *)
        pkt)->error_subcode_2));
   res = DID_ERROR << 16;
   bsg_job->reply->reply_payload_rcv_len = 0;
   fw_sts_ptr = ((uint8_t*)bsg_job->req->sense) + sizeof(struct fc_bsg_reply);
   memcpy( fw_sts_ptr, fw_status, sizeof(fw_status));
  }
  ql_dump_buffer(ql_dbg_user + ql_dbg_buffer, vha, 0x5056,
    (uint8_t *)pkt, sizeof(*pkt));
 }
 else {
  res = DID_OK << 16;
  bsg_job->reply->reply_payload_rcv_len = bsg_job->reply_payload.payload_len;
  bsg_job->reply_len = 0;
 }
 sp->done(vha, sp, 0);
}
