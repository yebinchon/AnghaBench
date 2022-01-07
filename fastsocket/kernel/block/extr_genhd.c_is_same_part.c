
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int dummy; } ;
struct gendisk {int part_tbl; } ;
struct disk_part_tbl {int * part; int len; int last_lookup; } ;
typedef int sector_t ;


 void* rcu_dereference (int ) ;
 scalar_t__ sector_in_part (struct hd_struct*,int ) ;

int is_same_part(struct gendisk *disk, sector_t sector1, sector_t sector2,
   struct hd_struct **part1, struct hd_struct **part2)
{
 struct disk_part_tbl *ptbl;
 struct hd_struct *part;
 int i = 1;

 *part1 = *part2 = ((void*)0);

 ptbl = rcu_dereference(disk->part_tbl);
 part = rcu_dereference(ptbl->last_lookup);

 do {
  if (part) {
   if (sector_in_part(part, sector1))
    *part1 = part;
   if (sector_in_part(part, sector2))
    *part2 = part;

   if (*part1 && *part2)

    return *part1 == *part2;
  }

  part = rcu_dereference(ptbl->part[i]);
 } while (i++ < ptbl->len);


 return *part1 == *part2;
}
