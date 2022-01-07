
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct fc_bsg_job {TYPE_2__* reply; TYPE_1__* request; } ;
struct TYPE_4__ {int result; int reply_payload_rcv_len; } ;
struct TYPE_3__ {int msgcode; } ;


 int EINVAL ;



 int lpfc_bsg_hst_vendor (struct fc_bsg_job*) ;
 int lpfc_bsg_rport_els (struct fc_bsg_job*) ;
 int lpfc_bsg_send_mgmt_cmd (struct fc_bsg_job*) ;

int
lpfc_bsg_request(struct fc_bsg_job *job)
{
 uint32_t msgcode;
 int rc;

 msgcode = job->request->msgcode;
 switch (msgcode) {
 case 130:
  rc = lpfc_bsg_hst_vendor(job);
  break;
 case 128:
  rc = lpfc_bsg_rport_els(job);
  break;
 case 129:
  rc = lpfc_bsg_send_mgmt_cmd(job);
  break;
 default:
  rc = -EINVAL;
  job->reply->reply_payload_rcv_len = 0;

  job->reply->result = rc;
  break;
 }

 return rc;
}
