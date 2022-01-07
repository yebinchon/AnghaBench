
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {scalar_t__ bio; int sense; int cmd_len; scalar_t__ cmd; struct fc_bsg_job* special; struct request* next_rq; } ;
struct fc_rport {int dev; } ;
struct fc_internal {TYPE_1__* f; } ;
struct fc_bsg_request {int dummy; } ;
struct TYPE_4__ {struct fc_bsg_job* sg_list; } ;
struct fc_bsg_job {int ref_cnt; TYPE_2__ request_payload; int * dev; int job_done; TYPE_2__ reply_payload; int reply_len; int reply; int request_len; struct fc_bsg_request* request; int job_lock; void* dd_data; struct request* req; struct fc_rport* rport; struct Scsi_Host* shost; } ;
struct Scsi_Host {int shost_gendev; int transportt; } ;
struct TYPE_3__ {scalar_t__ dd_bsg_size; } ;


 int BUG_ON (struct fc_bsg_job*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SCSI_SENSE_BUFFERSIZE ;
 int fc_bsg_jobdone ;
 int fc_bsg_map_buffer (TYPE_2__*,struct request*) ;
 int get_device (int *) ;
 int kfree (struct fc_bsg_job*) ;
 struct fc_bsg_job* kzalloc (scalar_t__,int ) ;
 int spin_lock_init (int *) ;
 struct fc_internal* to_fc_internal (int ) ;

__attribute__((used)) static int
fc_req_to_bsgjob(struct Scsi_Host *shost, struct fc_rport *rport,
 struct request *req)
{
 struct fc_internal *i = to_fc_internal(shost->transportt);
 struct request *rsp = req->next_rq;
 struct fc_bsg_job *job;
 int ret;

 BUG_ON(req->special);

 job = kzalloc(sizeof(struct fc_bsg_job) + i->f->dd_bsg_size,
   GFP_KERNEL);
 if (!job)
  return -ENOMEM;
 req->special = job;
 job->shost = shost;
 job->rport = rport;
 job->req = req;
 if (i->f->dd_bsg_size)
  job->dd_data = (void *)&job[1];
 spin_lock_init(&job->job_lock);
 job->request = (struct fc_bsg_request *)req->cmd;
 job->request_len = req->cmd_len;
 job->reply = req->sense;
 job->reply_len = SCSI_SENSE_BUFFERSIZE;

 if (req->bio) {
  ret = fc_bsg_map_buffer(&job->request_payload, req);
  if (ret)
   goto failjob_rls_job;
 }
 if (rsp && rsp->bio) {
  ret = fc_bsg_map_buffer(&job->reply_payload, rsp);
  if (ret)
   goto failjob_rls_rqst_payload;
 }
 job->job_done = fc_bsg_jobdone;
 if (rport)
  job->dev = &rport->dev;
 else
  job->dev = &shost->shost_gendev;
 get_device(job->dev);

 job->ref_cnt = 1;

 return 0;


failjob_rls_rqst_payload:
 kfree(job->request_payload.sg_list);
failjob_rls_job:
 kfree(job);
 return -ENOMEM;
}
