
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gendisk {int node_id; int minors; int async_notify; int part0; TYPE_1__* part_tbl; } ;
struct TYPE_5__ {int * type; int * class; } ;
struct TYPE_4__ {int ** part; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int __GFP_ZERO ;
 int block_class ;
 int device_initialize (TYPE_2__*) ;
 scalar_t__ disk_expand_part_tbl (struct gendisk*,int ) ;
 TYPE_2__* disk_to_dev (struct gendisk*) ;
 int disk_type ;
 int free_part_stats (int *) ;
 int init_part_stats (int *) ;
 int kfree (struct gendisk*) ;
 struct gendisk* kmalloc_node (int,int,int) ;
 int media_change_notify_thread ;
 int rand_initialize_disk (struct gendisk*) ;

struct gendisk *alloc_disk_node(int minors, int node_id)
{
 struct gendisk *disk;

 disk = kmalloc_node(sizeof(struct gendisk),
    GFP_KERNEL | __GFP_ZERO, node_id);
 if (disk) {
  if (!init_part_stats(&disk->part0)) {
   kfree(disk);
   return ((void*)0);
  }
  disk->node_id = node_id;
  if (disk_expand_part_tbl(disk, 0)) {
   free_part_stats(&disk->part0);
   kfree(disk);
   return ((void*)0);
  }
  disk->part_tbl->part[0] = &disk->part0;

  disk->minors = minors;
  rand_initialize_disk(disk);
  disk_to_dev(disk)->class = &block_class;
  disk_to_dev(disk)->type = &disk_type;
  device_initialize(disk_to_dev(disk));
  INIT_WORK(&disk->async_notify,
   media_change_notify_thread);
 }
 return disk;
}
