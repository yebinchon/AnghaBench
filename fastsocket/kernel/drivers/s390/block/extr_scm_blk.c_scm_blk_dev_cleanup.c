
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scm_blk_dev {TYPE_1__* gendisk; int tasklet; } ;
struct TYPE_3__ {int queue; } ;


 int blk_cleanup_queue (int ) ;
 int del_gendisk (TYPE_1__*) ;
 int put_disk (TYPE_1__*) ;
 int tasklet_kill (int *) ;

void scm_blk_dev_cleanup(struct scm_blk_dev *bdev)
{
 tasklet_kill(&bdev->tasklet);
 del_gendisk(bdev->gendisk);
 blk_cleanup_queue(bdev->gendisk->queue);
 put_disk(bdev->gendisk);
}
