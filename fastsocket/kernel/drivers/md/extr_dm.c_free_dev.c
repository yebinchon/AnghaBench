
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mapped_device {int queue; TYPE_1__* disk; scalar_t__ bs; scalar_t__ io_pool; scalar_t__ tio_pool; int wq; int bdev; } ;
struct TYPE_5__ {int * private_data; } ;


 int MINOR (int ) ;
 int THIS_MODULE ;
 int _minor_lock ;
 int bdput (int ) ;
 int bioset_free (scalar_t__) ;
 int blk_cleanup_queue (int ) ;
 int blk_integrity_unregister (TYPE_1__*) ;
 int del_gendisk (TYPE_1__*) ;
 int destroy_workqueue (int ) ;
 int disk_devt (TYPE_1__*) ;
 int free_minor (int) ;
 int kfree (struct mapped_device*) ;
 int mempool_destroy (scalar_t__) ;
 int module_put (int ) ;
 int put_disk (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_fs (struct mapped_device*) ;

__attribute__((used)) static void free_dev(struct mapped_device *md)
{
 int minor = MINOR(disk_devt(md->disk));

 unlock_fs(md);
 bdput(md->bdev);
 destroy_workqueue(md->wq);
 if (md->tio_pool)
  mempool_destroy(md->tio_pool);
 if (md->io_pool)
  mempool_destroy(md->io_pool);
 if (md->bs)
  bioset_free(md->bs);
 blk_integrity_unregister(md->disk);
 del_gendisk(md->disk);
 free_minor(minor);

 spin_lock(&_minor_lock);
 md->disk->private_data = ((void*)0);
 spin_unlock(&_minor_lock);

 put_disk(md->disk);
 blk_cleanup_queue(md->queue);
 module_put(THIS_MODULE);
 kfree(md);
}
