
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {scalar_t__ queue; int part0; struct gendisk* random; } ;
struct device {int dummy; } ;


 int blk_put_queue (scalar_t__) ;
 struct gendisk* dev_to_disk (struct device*) ;
 int disk_replace_part_tbl (struct gendisk*,int *) ;
 int free_part_stats (int *) ;
 int kfree (struct gendisk*) ;

__attribute__((used)) static void disk_release(struct device *dev)
{
 struct gendisk *disk = dev_to_disk(dev);

 kfree(disk->random);
 disk_replace_part_tbl(disk, ((void*)0));
 free_part_stats(&disk->part0);
 if (disk->queue)
  blk_put_queue(disk->queue);
 kfree(disk);
}
