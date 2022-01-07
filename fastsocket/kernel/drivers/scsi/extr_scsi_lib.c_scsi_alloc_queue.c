
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct request_queue {int dummy; } ;


 struct request_queue* __scsi_alloc_queue (int ,int ) ;
 int blk_queue_lld_busy (struct request_queue*,int ) ;
 int blk_queue_prep_rq (struct request_queue*,int ) ;
 int blk_queue_rq_timed_out (struct request_queue*,int ) ;
 int blk_queue_softirq_done (struct request_queue*,int ) ;
 int scsi_lld_busy ;
 int scsi_prep_fn ;
 int scsi_request_fn ;
 int scsi_softirq_done ;
 int scsi_times_out ;

struct request_queue *scsi_alloc_queue(struct scsi_device *sdev)
{
 struct request_queue *q;

 q = __scsi_alloc_queue(sdev->host, scsi_request_fn);
 if (!q)
  return ((void*)0);

 blk_queue_prep_rq(q, scsi_prep_fn);
 blk_queue_softirq_done(q, scsi_softirq_done);
 blk_queue_rq_timed_out(q, scsi_times_out);
 blk_queue_lld_busy(q, scsi_lld_busy);
 return q;
}
