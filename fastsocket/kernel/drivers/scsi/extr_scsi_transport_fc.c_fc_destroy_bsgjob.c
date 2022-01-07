
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct fc_bsg_job* sg_list; } ;
struct TYPE_3__ {struct fc_bsg_job* sg_list; } ;
struct fc_bsg_job {TYPE_2__ reply_payload; TYPE_1__ request_payload; int dev; int job_lock; scalar_t__ ref_cnt; } ;


 int kfree (struct fc_bsg_job*) ;
 int put_device (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
fc_destroy_bsgjob(struct fc_bsg_job *job)
{
 unsigned long flags;

 spin_lock_irqsave(&job->job_lock, flags);
 if (job->ref_cnt) {
  spin_unlock_irqrestore(&job->job_lock, flags);
  return;
 }
 spin_unlock_irqrestore(&job->job_lock, flags);

 put_device(job->dev);

 kfree(job->request_payload.sg_list);
 kfree(job->reply_payload.sg_list);
 kfree(job);
}
