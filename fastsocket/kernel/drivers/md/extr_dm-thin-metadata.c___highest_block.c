
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_device {int id; struct dm_pool_metadata* pmd; } ;
struct dm_pool_metadata {int bl_info; int root; int tl_info; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int dm_btree_find_highest_key (int *,int ,int *) ;
 int dm_btree_lookup (int *,int ,int *,int *) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int __highest_block(struct dm_thin_device *td, dm_block_t *result)
{
 int r;
 __le64 value_le;
 dm_block_t thin_root;
 struct dm_pool_metadata *pmd = td->pmd;

 r = dm_btree_lookup(&pmd->tl_info, pmd->root, &td->id, &value_le);
 if (r)
  return r;

 thin_root = le64_to_cpu(value_le);

 return dm_btree_find_highest_key(&pmd->bl_info, thin_root, result);
}
