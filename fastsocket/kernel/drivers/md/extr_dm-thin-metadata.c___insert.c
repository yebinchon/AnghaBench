
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_device {int changed; int mapped_blocks; int id; struct dm_pool_metadata* pmd; } ;
struct dm_pool_metadata {int root; int info; int time; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int __dm_bless_for_disk (int *) ;
 int cpu_to_le64 (int ) ;
 int dm_btree_insert_notify (int *,int ,int *,int *,int *,int*) ;
 int pack_block_time (int ,int ) ;

__attribute__((used)) static int __insert(struct dm_thin_device *td, dm_block_t block,
      dm_block_t data_block)
{
 int r, inserted;
 __le64 value;
 struct dm_pool_metadata *pmd = td->pmd;
 dm_block_t keys[2] = { td->id, block };

 value = cpu_to_le64(pack_block_time(data_block, pmd->time));
 __dm_bless_for_disk(&value);

 r = dm_btree_insert_notify(&pmd->info, pmd->root, keys, &value,
       &pmd->root, &inserted);
 if (r)
  return r;

 td->changed = 1;
 if (inserted)
  td->mapped_blocks++;

 return 0;
}
