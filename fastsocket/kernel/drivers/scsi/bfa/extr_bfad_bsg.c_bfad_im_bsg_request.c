
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


 int BFA_STATUS_OK ;
 int EINVAL ;





 int bfad_im_bsg_els_ct_request (struct fc_bsg_job*) ;
 int bfad_im_bsg_vendor_request (struct fc_bsg_job*) ;

int
bfad_im_bsg_request(struct fc_bsg_job *job)
{
 uint32_t rc = BFA_STATUS_OK;

 switch (job->request->msgcode) {
 case 130:

  rc = bfad_im_bsg_vendor_request(job);
  break;
 case 131:
 case 128:
 case 132:
 case 129:

  rc = bfad_im_bsg_els_ct_request(job);
  break;
 default:
  job->reply->result = rc = -EINVAL;
  job->reply->reply_payload_rcv_len = 0;
  break;
 }

 return rc;
}
