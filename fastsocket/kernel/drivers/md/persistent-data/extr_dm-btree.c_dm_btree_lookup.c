
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct ro_spine {int dummy; } ;
struct TYPE_2__ {size_t size; } ;
struct dm_btree_info {int levels; TYPE_1__ value_type; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int ENODATA ;
 int btree_lookup_raw (struct ro_spine*,int ,scalar_t__,int ,scalar_t__*,void*,size_t) ;
 int exit_ro_spine (struct ro_spine*) ;
 int init_ro_spine (struct ro_spine*,struct dm_btree_info*) ;
 int le64_to_cpu (int ) ;
 int lower_bound ;

int dm_btree_lookup(struct dm_btree_info *info, dm_block_t root,
      uint64_t *keys, void *value_le)
{
 unsigned level, last_level = info->levels - 1;
 int r = -ENODATA;
 uint64_t rkey;
 __le64 internal_value_le;
 struct ro_spine spine;

 init_ro_spine(&spine, info);
 for (level = 0; level < info->levels; level++) {
  size_t size;
  void *value_p;

  if (level == last_level) {
   value_p = value_le;
   size = info->value_type.size;

  } else {
   value_p = &internal_value_le;
   size = sizeof(uint64_t);
  }

  r = btree_lookup_raw(&spine, root, keys[level],
         lower_bound, &rkey,
         value_p, size);

  if (!r) {
   if (rkey != keys[level]) {
    exit_ro_spine(&spine);
    return -ENODATA;
   }
  } else {
   exit_ro_spine(&spine);
   return r;
  }

  root = le64_to_cpu(internal_value_le);
 }
 exit_ro_spine(&spine);

 return r;
}
