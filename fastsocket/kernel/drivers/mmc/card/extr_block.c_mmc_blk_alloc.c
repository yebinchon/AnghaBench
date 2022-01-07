
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int capacity; int read_blkbits; } ;
struct TYPE_7__ {int sectors; } ;
struct mmc_card {TYPE_2__ csd; TYPE_1__ ext_csd; int dev; } ;
struct TYPE_10__ {int queue; struct mmc_blk_data* data; int issue_fn; } ;
struct mmc_blk_data {int usage; TYPE_3__* disk; TYPE_5__ queue; int lock; int read_only; } ;
struct TYPE_9__ {int first_minor; int disk_name; int * driverfs_dev; int queue; struct mmc_blk_data* private_data; int * fops; int major; } ;


 int ENOMEM ;
 int ENOSPC ;
 struct mmc_blk_data* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MMC_BLOCK_MAJOR ;
 int MMC_NUM_MINORS ;
 int MMC_SHIFT ;
 int __set_bit (int,int ) ;
 TYPE_3__* alloc_disk (int) ;
 int blk_queue_logical_block_size (int ,int) ;
 int dev_use ;
 int find_first_zero_bit (int ,int) ;
 int kfree (struct mmc_blk_data*) ;
 struct mmc_blk_data* kzalloc (int,int ) ;
 int mmc_bdops ;
 int mmc_blk_issue_rq ;
 int mmc_blk_readonly (struct mmc_card*) ;
 scalar_t__ mmc_card_blockaddr (struct mmc_card*) ;
 int mmc_card_sd (struct mmc_card*) ;
 int mmc_init_queue (TYPE_5__*,struct mmc_card*,int *) ;
 int put_disk (TYPE_3__*) ;
 int set_capacity (TYPE_3__*,int) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static struct mmc_blk_data *mmc_blk_alloc(struct mmc_card *card)
{
 struct mmc_blk_data *md;
 int devidx, ret;

 devidx = find_first_zero_bit(dev_use, MMC_NUM_MINORS);
 if (devidx >= MMC_NUM_MINORS)
  return ERR_PTR(-ENOSPC);
 __set_bit(devidx, dev_use);

 md = kzalloc(sizeof(struct mmc_blk_data), GFP_KERNEL);
 if (!md) {
  ret = -ENOMEM;
  goto out;
 }






 md->read_only = mmc_blk_readonly(card);

 md->disk = alloc_disk(1 << MMC_SHIFT);
 if (md->disk == ((void*)0)) {
  ret = -ENOMEM;
  goto err_kfree;
 }

 spin_lock_init(&md->lock);
 md->usage = 1;

 ret = mmc_init_queue(&md->queue, card, &md->lock);
 if (ret)
  goto err_putdisk;

 md->queue.issue_fn = mmc_blk_issue_rq;
 md->queue.data = md;

 md->disk->major = MMC_BLOCK_MAJOR;
 md->disk->first_minor = devidx << MMC_SHIFT;
 md->disk->fops = &mmc_bdops;
 md->disk->private_data = md;
 md->disk->queue = md->queue.queue;
 md->disk->driverfs_dev = &card->dev;
 sprintf(md->disk->disk_name, "mmcblk%d", devidx);

 blk_queue_logical_block_size(md->queue.queue, 512);

 if (!mmc_card_sd(card) && mmc_card_blockaddr(card)) {




  set_capacity(md->disk, card->ext_csd.sectors);
 } else {




  set_capacity(md->disk,
   card->csd.capacity << (card->csd.read_blkbits - 9));
 }
 return md;

 err_putdisk:
 put_disk(md->disk);
 err_kfree:
 kfree(md);
 out:
 return ERR_PTR(ret);
}
