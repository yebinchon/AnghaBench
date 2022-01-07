
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct request_queue {int dummy; } ;
struct fc_internal {TYPE_7__* f; } ;
struct TYPE_10__ {int payload_len; } ;
struct TYPE_9__ {int payload_len; } ;
struct fc_bsg_job {int request_len; int reply_len; TYPE_8__* reply; TYPE_5__* request; TYPE_2__ reply_payload; TYPE_1__ request_payload; } ;
struct fc_bsg_host_vendor {int dummy; } ;
struct fc_bsg_host_els {int dummy; } ;
struct fc_bsg_host_del_rport {int dummy; } ;
struct fc_bsg_host_ct {int dummy; } ;
struct fc_bsg_host_add_rport {int dummy; } ;
struct Scsi_Host {TYPE_6__* hostt; int transportt; } ;
typedef enum fc_dispatch_result { ____Placeholder_fc_dispatch_result } fc_dispatch_result ;
struct TYPE_16__ {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_15__ {int (* bsg_request ) (struct fc_bsg_job*) ;} ;
struct TYPE_14__ {long vendor_id; } ;
struct TYPE_11__ {long vendor_id; } ;
struct TYPE_12__ {TYPE_3__ h_vendor; } ;
struct TYPE_13__ {int msgcode; TYPE_4__ rqst_data; } ;


 int BUG_ON (int) ;
 int EBADR ;
 int EINVAL ;
 int ENOMSG ;
 int ESRCH ;





 int FC_DISPATCH_UNLOCKED ;
 int fc_bsg_jobdone (struct fc_bsg_job*) ;
 int stub1 (struct fc_bsg_job*) ;
 struct fc_internal* to_fc_internal (int ) ;

__attribute__((used)) static enum fc_dispatch_result
fc_bsg_host_dispatch(struct request_queue *q, struct Scsi_Host *shost,
    struct fc_bsg_job *job)
{
 struct fc_internal *i = to_fc_internal(shost->transportt);
 int cmdlen = sizeof(uint32_t);
 int ret;


 switch (job->request->msgcode) {
 case 132:
  cmdlen += sizeof(struct fc_bsg_host_add_rport);
  break;

 case 130:
  cmdlen += sizeof(struct fc_bsg_host_del_rport);
  break;

 case 129:
  cmdlen += sizeof(struct fc_bsg_host_els);

  if ((!job->request_payload.payload_len) ||
      (!job->reply_payload.payload_len)) {
   ret = -EINVAL;
   goto fail_host_msg;
  }
  break;

 case 131:
  cmdlen += sizeof(struct fc_bsg_host_ct);

  if ((!job->request_payload.payload_len) ||
      (!job->reply_payload.payload_len)) {
   ret = -EINVAL;
   goto fail_host_msg;
  }
  break;

 case 128:
  cmdlen += sizeof(struct fc_bsg_host_vendor);
  if ((shost->hostt->vendor_id == 0L) ||
      (job->request->rqst_data.h_vendor.vendor_id !=
   shost->hostt->vendor_id)) {
   ret = -ESRCH;
   goto fail_host_msg;
  }
  break;

 default:
  ret = -EBADR;
  goto fail_host_msg;
 }


 if (job->request_len < cmdlen) {
  ret = -ENOMSG;
  goto fail_host_msg;
 }

 ret = i->f->bsg_request(job);
 if (!ret)
  return FC_DISPATCH_UNLOCKED;

fail_host_msg:

 BUG_ON(job->reply_len < sizeof(uint32_t));
 job->reply->reply_payload_rcv_len = 0;
 job->reply->result = ret;
 job->reply_len = sizeof(uint32_t);
 fc_bsg_jobdone(job);
 return FC_DISPATCH_UNLOCKED;
}
