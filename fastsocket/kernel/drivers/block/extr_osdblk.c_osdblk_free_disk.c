
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osdblk_device {struct gendisk* disk; } ;
struct gendisk {int flags; scalar_t__ queue; } ;


 int GENHD_FL_UP ;
 int blk_cleanup_queue (scalar_t__) ;
 int del_gendisk (struct gendisk*) ;
 int put_disk (struct gendisk*) ;

__attribute__((used)) static void osdblk_free_disk(struct osdblk_device *osdev)
{
 struct gendisk *disk = osdev->disk;

 if (!disk)
  return;

 if (disk->flags & GENHD_FL_UP)
  del_gendisk(disk);
 if (disk->queue)
  blk_cleanup_queue(disk->queue);
 put_disk(disk);
}
