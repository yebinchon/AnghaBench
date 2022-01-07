
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int data_space_map_root; int data_sm; int metadata_space_map_root; int metadata_sm; } ;


 int dm_sm_copy_root (int ,int *,size_t) ;
 int dm_sm_root_size (int ,size_t*) ;

__attribute__((used)) static int save_sm_roots(struct dm_pool_metadata *pmd)
{
 int r;
 size_t len;

 r = dm_sm_root_size(pmd->metadata_sm, &len);
 if (r < 0)
  return r;

 r = dm_sm_copy_root(pmd->metadata_sm, &pmd->metadata_space_map_root, len);
 if (r < 0)
  return r;

 r = dm_sm_root_size(pmd->data_sm, &len);
 if (r < 0)
  return r;

 return dm_sm_copy_root(pmd->data_sm, &pmd->data_space_map_root, len);
}
