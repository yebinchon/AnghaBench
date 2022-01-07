
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_device {int changed; int mapped_blocks; int id; struct dm_pool_metadata* pmd; } ;
struct dm_pool_metadata {int root; int info; } ;
typedef int dm_block_t ;


 int dm_btree_remove (int *,int ,int *,int *) ;

__attribute__((used)) static int __remove(struct dm_thin_device *td, dm_block_t block)
{
 int r;
 struct dm_pool_metadata *pmd = td->pmd;
 dm_block_t keys[2] = { td->id, block };

 r = dm_btree_remove(&pmd->info, pmd->root, keys, &pmd->root);
 if (r)
  return r;

 td->mapped_blocks--;
 td->changed = 1;

 return 0;
}
