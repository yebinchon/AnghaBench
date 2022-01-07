
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct request_queue {int dummy; } ;
struct fc_rport {int dummy; } ;
struct fc_internal {TYPE_4__* f; } ;
struct fc_bsg_rport_els {int dummy; } ;
struct fc_bsg_rport_ct {int dummy; } ;
struct TYPE_8__ {int payload_len; } ;
struct TYPE_7__ {int payload_len; } ;
struct fc_bsg_job {int request_len; int reply_len; TYPE_5__* reply; TYPE_3__ reply_payload; TYPE_2__ request_payload; TYPE_1__* request; } ;
struct Scsi_Host {int transportt; } ;
typedef enum fc_dispatch_result { ____Placeholder_fc_dispatch_result } fc_dispatch_result ;
struct TYPE_10__ {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_9__ {int (* bsg_request ) (struct fc_bsg_job*) ;} ;
struct TYPE_6__ {int msgcode; } ;


 int BUG_ON (int) ;
 int EBADR ;
 int EINVAL ;
 int ENOMSG ;


 int FC_DISPATCH_UNLOCKED ;
 int fc_bsg_jobdone (struct fc_bsg_job*) ;
 int stub1 (struct fc_bsg_job*) ;
 struct fc_internal* to_fc_internal (int ) ;

__attribute__((used)) static enum fc_dispatch_result
fc_bsg_rport_dispatch(struct request_queue *q, struct Scsi_Host *shost,
    struct fc_rport *rport, struct fc_bsg_job *job)
{
 struct fc_internal *i = to_fc_internal(shost->transportt);
 int cmdlen = sizeof(uint32_t);
 int ret;


 switch (job->request->msgcode) {
 case 128:
  cmdlen += sizeof(struct fc_bsg_rport_els);
  goto check_bidi;

 case 129:
  cmdlen += sizeof(struct fc_bsg_rport_ct);
check_bidi:

  if ((!job->request_payload.payload_len) ||
      (!job->reply_payload.payload_len)) {
   ret = -EINVAL;
   goto fail_rport_msg;
  }
  break;
 default:
  ret = -EBADR;
  goto fail_rport_msg;
 }


 if (job->request_len < cmdlen) {
  ret = -ENOMSG;
  goto fail_rport_msg;
 }

 ret = i->f->bsg_request(job);
 if (!ret)
  return FC_DISPATCH_UNLOCKED;

fail_rport_msg:

 BUG_ON(job->reply_len < sizeof(uint32_t));
 job->reply->reply_payload_rcv_len = 0;
 job->reply->result = ret;
 job->reply_len = sizeof(uint32_t);
 fc_bsg_jobdone(job);
 return FC_DISPATCH_UNLOCKED;
}
