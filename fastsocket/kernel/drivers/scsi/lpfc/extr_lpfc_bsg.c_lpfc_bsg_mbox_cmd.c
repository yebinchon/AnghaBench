
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct fc_bsg_request {int dummy; } ;
struct fc_bsg_job {int request_len; int * dd_data; TYPE_5__* reply; int (* job_done ) (struct fc_bsg_job*) ;TYPE_4__* request; TYPE_1__* shost; } ;
struct dfc_mbox_req {scalar_t__ extSeqNum; scalar_t__ extMboxTag; } ;
struct TYPE_10__ {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_7__ {scalar_t__ vendor_cmd; } ;
struct TYPE_8__ {TYPE_2__ h_vendor; } ;
struct TYPE_9__ {TYPE_3__ rqst_data; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;


 int KERN_INFO ;
 int LOG_LIBDFC ;
 int lpfc_bsg_issue_mbox (struct lpfc_hba*,struct fc_bsg_job*,struct lpfc_vport*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int) ;
 int stub1 (struct fc_bsg_job*) ;

__attribute__((used)) static int
lpfc_bsg_mbox_cmd(struct fc_bsg_job *job)
{
 struct lpfc_vport *vport = (struct lpfc_vport *)job->shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 struct dfc_mbox_req *mbox_req;
 int rc = 0;


 job->reply->reply_payload_rcv_len = 0;
 if (job->request_len <
     sizeof(struct fc_bsg_request) + sizeof(struct dfc_mbox_req)) {
  lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
    "2737 Mix-and-match backward compatibility "
    "between MBOX_REQ old size:%d and "
    "new request size:%d\n",
    (int)(job->request_len -
          sizeof(struct fc_bsg_request)),
    (int)sizeof(struct dfc_mbox_req));
  mbox_req = (struct dfc_mbox_req *)
    job->request->rqst_data.h_vendor.vendor_cmd;
  mbox_req->extMboxTag = 0;
  mbox_req->extSeqNum = 0;
 }

 rc = lpfc_bsg_issue_mbox(phba, job, vport);

 if (rc == 0) {

  job->reply->result = 0;
  job->dd_data = ((void*)0);
  job->job_done(job);
 } else if (rc == 1)

  rc = 0;
 else {

  job->reply->result = rc;
  job->dd_data = ((void*)0);
 }

 return rc;
}
