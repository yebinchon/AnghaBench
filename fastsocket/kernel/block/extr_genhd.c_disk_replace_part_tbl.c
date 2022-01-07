
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct disk_part_tbl* part_tbl; } ;
struct disk_part_tbl {int rcu_head; struct disk_part_tbl* last_lookup; } ;


 int call_rcu (int *,int ) ;
 int disk_free_ptbl_rcu_cb ;
 int rcu_assign_pointer (struct disk_part_tbl*,struct disk_part_tbl*) ;

__attribute__((used)) static void disk_replace_part_tbl(struct gendisk *disk,
      struct disk_part_tbl *new_ptbl)
{
 struct disk_part_tbl *old_ptbl = disk->part_tbl;

 rcu_assign_pointer(disk->part_tbl, new_ptbl);

 if (old_ptbl) {
  rcu_assign_pointer(old_ptbl->last_lookup, ((void*)0));
  call_rcu(&old_ptbl->rcu_head, disk_free_ptbl_rcu_cb);
 }
}
