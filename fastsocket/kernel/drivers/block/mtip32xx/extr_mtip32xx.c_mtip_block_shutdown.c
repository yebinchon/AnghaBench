
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct driver_data {int index; int * queue; TYPE_2__* disk; TYPE_1__* pdev; } ;
struct TYPE_5__ {scalar_t__ queue; int disk_name; } ;
struct TYPE_4__ {int dev; } ;


 int blk_cleanup_queue (int *) ;
 int del_gendisk (TYPE_2__*) ;
 int dev_info (int *,char*,int ) ;
 int ida_remove (int *,int ) ;
 int mtip_hw_shutdown (struct driver_data*) ;
 int put_disk (TYPE_2__*) ;
 int rssd_index_ida ;
 int rssd_index_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mtip_block_shutdown(struct driver_data *dd)
{

 if (dd->disk) {
  dev_info(&dd->pdev->dev,
   "Shutting down %s ...\n", dd->disk->disk_name);

  if (dd->disk->queue) {
   del_gendisk(dd->disk);
   blk_cleanup_queue(dd->queue);
  } else
   put_disk(dd->disk);
  dd->disk = ((void*)0);
  dd->queue = ((void*)0);
 }

 spin_lock(&rssd_index_lock);
 ida_remove(&rssd_index_ida, dd->index);
 spin_unlock(&rssd_index_lock);

 mtip_hw_shutdown(dd);
 return 0;
}
