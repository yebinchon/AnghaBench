
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mspro_block_data {int eject; int disk; int attr_group; int * queue; int q_lock; } ;
struct TYPE_2__ {int kobj; } ;
struct memstick_dev {TYPE_1__ dev; } ;


 int blk_cleanup_queue (int *) ;
 int blk_start_queue (int *) ;
 int del_gendisk (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int memstick_set_drvdata (struct memstick_dev*,int *) ;
 int mspro_block_data_clear (struct mspro_block_data*) ;
 int mspro_block_disk_lock ;
 int mspro_block_disk_release (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void mspro_block_remove(struct memstick_dev *card)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 unsigned long flags;

 del_gendisk(msb->disk);
 dev_dbg(&card->dev, "mspro block remove\n");
 spin_lock_irqsave(&msb->q_lock, flags);
 msb->eject = 1;
 blk_start_queue(msb->queue);
 spin_unlock_irqrestore(&msb->q_lock, flags);

 blk_cleanup_queue(msb->queue);
 msb->queue = ((void*)0);

 sysfs_remove_group(&card->dev.kobj, &msb->attr_group);

 mutex_lock(&mspro_block_disk_lock);
 mspro_block_data_clear(msb);
 mutex_unlock(&mspro_block_disk_lock);

 mspro_block_disk_release(msb->disk);
 memstick_set_drvdata(card, ((void*)0));
}
