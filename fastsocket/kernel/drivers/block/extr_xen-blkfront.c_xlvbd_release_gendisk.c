
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct blkfront_info {TYPE_1__* gd; int * rq; int callback; } ;
struct TYPE_3__ {unsigned int first_minor; unsigned int minors; } ;


 int blk_cleanup_queue (int *) ;
 int blk_stop_queue (int *) ;
 int blkif_io_lock ;
 int del_gendisk (TYPE_1__*) ;
 int flush_scheduled_work () ;
 int gnttab_cancel_free_callback (int *) ;
 int put_disk (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xlbd_release_minors (unsigned int,unsigned int) ;

__attribute__((used)) static void xlvbd_release_gendisk(struct blkfront_info *info)
{
 unsigned int minor, nr_minors;
 unsigned long flags;

 if (info->rq == ((void*)0))
  return;

 spin_lock_irqsave(&blkif_io_lock, flags);


 blk_stop_queue(info->rq);


 gnttab_cancel_free_callback(&info->callback);
 spin_unlock_irqrestore(&blkif_io_lock, flags);


 flush_scheduled_work();

 del_gendisk(info->gd);

 minor = info->gd->first_minor;
 nr_minors = info->gd->minors;
 xlbd_release_minors(minor, nr_minors);

 blk_cleanup_queue(info->rq);
 info->rq = ((void*)0);

 put_disk(info->gd);
 info->gd = ((void*)0);
}
