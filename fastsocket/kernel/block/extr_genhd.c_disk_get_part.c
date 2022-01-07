
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int dummy; } ;
struct gendisk {int part_tbl; } ;
struct disk_part_tbl {int len; int * part; } ;


 int get_device (int ) ;
 scalar_t__ likely (int) ;
 int part_to_dev (struct hd_struct*) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

struct hd_struct *disk_get_part(struct gendisk *disk, int partno)
{
 struct hd_struct *part = ((void*)0);
 struct disk_part_tbl *ptbl;

 if (unlikely(partno < 0))
  return ((void*)0);

 rcu_read_lock();

 ptbl = rcu_dereference(disk->part_tbl);
 if (likely(partno < ptbl->len)) {
  part = rcu_dereference(ptbl->part[partno]);
  if (part)
   get_device(part_to_dev(part));
 }

 rcu_read_unlock();

 return part;
}
