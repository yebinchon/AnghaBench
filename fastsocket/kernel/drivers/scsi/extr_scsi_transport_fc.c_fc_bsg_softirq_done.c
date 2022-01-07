
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int errors; struct fc_bsg_job* special; } ;
struct fc_bsg_job {int job_lock; int ref_cnt; int state_flags; } ;


 int FC_RQST_STATE_DONE ;
 int blk_end_request_all (struct request*,int ) ;
 int fc_destroy_bsgjob (struct fc_bsg_job*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fc_bsg_softirq_done(struct request *rq)
{
 struct fc_bsg_job *job = rq->special;
 unsigned long flags;

 spin_lock_irqsave(&job->job_lock, flags);
 job->state_flags |= FC_RQST_STATE_DONE;
 job->ref_cnt--;
 spin_unlock_irqrestore(&job->job_lock, flags);

 blk_end_request_all(rq, rq->errors);
 fc_destroy_bsgjob(job);
}
