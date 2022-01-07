
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {char* sense; scalar_t__ errors; int * end_io_data; scalar_t__ sense_len; int ref_count; } ;
struct gendisk {int dummy; } ;
typedef int sense ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EIO ;
 int SCSI_SENSE_BUFFERSIZE ;
 int blk_end_sync_rq ;
 int blk_execute_rq_nowait (struct request_queue*,struct gendisk*,struct request*,int,int ) ;
 int memset (char*,int ,int) ;
 int wait ;
 int wait_for_completion (int *) ;

int blk_execute_rq(struct request_queue *q, struct gendisk *bd_disk,
     struct request *rq, int at_head)
{
 DECLARE_COMPLETION_ONSTACK(wait);
 char sense[SCSI_SENSE_BUFFERSIZE];
 int err = 0;





 rq->ref_count++;

 if (!rq->sense) {
  memset(sense, 0, sizeof(sense));
  rq->sense = sense;
  rq->sense_len = 0;
 }

 rq->end_io_data = &wait;
 blk_execute_rq_nowait(q, bd_disk, rq, at_head, blk_end_sync_rq);
 wait_for_completion(&wait);

 if (rq->errors)
  err = -EIO;

 return err;
}
