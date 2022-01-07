
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int node_id; struct disk_part_tbl* part_tbl; } ;
struct disk_part_tbl {int len; int * part; int rcu_head; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_RCU_HEAD (int *) ;
 int disk_max_parts (struct gendisk*) ;
 int disk_replace_part_tbl (struct gendisk*,struct disk_part_tbl*) ;
 struct disk_part_tbl* kzalloc_node (size_t,int ,int ) ;
 int rcu_assign_pointer (int ,int ) ;

int disk_expand_part_tbl(struct gendisk *disk, int partno)
{
 struct disk_part_tbl *old_ptbl = disk->part_tbl;
 struct disk_part_tbl *new_ptbl;
 int len = old_ptbl ? old_ptbl->len : 0;
 int target = partno + 1;
 size_t size;
 int i;


 if (disk_max_parts(disk) && target > disk_max_parts(disk))
  return -EINVAL;

 if (target <= len)
  return 0;

 size = sizeof(*new_ptbl) + target * sizeof(new_ptbl->part[0]);
 new_ptbl = kzalloc_node(size, GFP_KERNEL, disk->node_id);
 if (!new_ptbl)
  return -ENOMEM;

 INIT_RCU_HEAD(&new_ptbl->rcu_head);
 new_ptbl->len = target;

 for (i = 0; i < len; i++)
  rcu_assign_pointer(new_ptbl->part[i], old_ptbl->part[i]);

 disk_replace_part_tbl(disk, new_ptbl);
 return 0;
}
