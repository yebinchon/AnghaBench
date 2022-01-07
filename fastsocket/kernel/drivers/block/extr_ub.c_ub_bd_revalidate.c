
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nsec; int bsize; } ;
struct ub_lun {TYPE_1__ capacity; int udev; } ;
struct gendisk {int queue; struct ub_lun* private_data; } ;


 int blk_queue_logical_block_size (int ,int ) ;
 int set_capacity (struct gendisk*,int ) ;
 int ub_revalidate (int ,struct ub_lun*) ;

__attribute__((used)) static int ub_bd_revalidate(struct gendisk *disk)
{
 struct ub_lun *lun = disk->private_data;

 ub_revalidate(lun->udev, lun);


 blk_queue_logical_block_size(disk->queue, lun->capacity.bsize);
 set_capacity(disk, lun->capacity.nsec);


 return 0;
}
