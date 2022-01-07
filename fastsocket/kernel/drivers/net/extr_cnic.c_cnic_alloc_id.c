
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cnic_id_tbl {scalar_t__ start; scalar_t__ max; int lock; int table; } ;


 int set_bit (scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static int cnic_alloc_id(struct cnic_id_tbl *id_tbl, u32 id)
{
 int ret = -1;

 id -= id_tbl->start;
 if (id >= id_tbl->max)
  return ret;

 spin_lock(&id_tbl->lock);
 if (!test_bit(id, id_tbl->table)) {
  set_bit(id, id_tbl->table);
  ret = 0;
 }
 spin_unlock(&id_tbl->lock);
 return ret;
}
