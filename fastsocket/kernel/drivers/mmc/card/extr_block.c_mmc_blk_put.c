
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue; } ;
struct mmc_blk_data {scalar_t__ usage; TYPE_2__* disk; TYPE_1__ queue; } ;
struct TYPE_5__ {int first_minor; } ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 int MMC_SHIFT ;
 int __clear_bit (int,int ) ;
 int blk_cleanup_queue (int ) ;
 int dev_use ;
 int disk_devt (TYPE_2__*) ;
 int kfree (struct mmc_blk_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_lock ;
 int put_disk (TYPE_2__*) ;

__attribute__((used)) static void mmc_blk_put(struct mmc_blk_data *md)
{
 mutex_lock(&open_lock);
 md->usage--;
 if (md->usage == 0) {
  int devmaj = MAJOR(disk_devt(md->disk));
  int devidx = MINOR(disk_devt(md->disk)) >> MMC_SHIFT;

  if (!devmaj)
   devidx = md->disk->first_minor >> MMC_SHIFT;

  blk_cleanup_queue(md->queue.queue);

  __clear_bit(devidx, dev_use);

  put_disk(md->disk);
  kfree(md);
 }
 mutex_unlock(&open_lock);
}
