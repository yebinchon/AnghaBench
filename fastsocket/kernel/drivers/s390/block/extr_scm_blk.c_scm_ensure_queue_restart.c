
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_blk_dev {int rq; int queued_reqs; } ;


 scalar_t__ atomic_read (int *) ;
 int blk_plug_device (int ) ;

__attribute__((used)) static void scm_ensure_queue_restart(struct scm_blk_dev *bdev)
{
 if (atomic_read(&bdev->queued_reqs)) {

  return;
 }

 blk_plug_device(bdev->rq);
}
