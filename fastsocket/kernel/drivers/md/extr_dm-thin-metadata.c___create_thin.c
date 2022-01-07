
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_thin_device {int dummy; } ;
struct dm_pool_metadata {int bl_info; int root; int tl_info; int details_root; int details_info; } ;
struct disk_device_details {int dummy; } ;
typedef int dm_thin_id ;
typedef int dm_block_t ;
typedef int __le64 ;


 int EEXIST ;
 int __close_device (struct dm_thin_device*) ;
 int __dm_bless_for_disk (int *) ;
 int __open_device (struct dm_pool_metadata*,int ,int,struct dm_thin_device**) ;
 int cpu_to_le64 (int ) ;
 int dm_btree_del (int *,int ) ;
 int dm_btree_empty (int *,int *) ;
 int dm_btree_insert (int *,int ,int *,int *,int *) ;
 int dm_btree_lookup (int *,int ,int *,struct disk_device_details*) ;
 int dm_btree_remove (int *,int ,int *,int *) ;

__attribute__((used)) static int __create_thin(struct dm_pool_metadata *pmd,
    dm_thin_id dev)
{
 int r;
 dm_block_t dev_root;
 uint64_t key = dev;
 struct disk_device_details details_le;
 struct dm_thin_device *td;
 __le64 value;

 r = dm_btree_lookup(&pmd->details_info, pmd->details_root,
       &key, &details_le);
 if (!r)
  return -EEXIST;




 r = dm_btree_empty(&pmd->bl_info, &dev_root);
 if (r)
  return r;




 value = cpu_to_le64(dev_root);
 __dm_bless_for_disk(&value);
 r = dm_btree_insert(&pmd->tl_info, pmd->root, &key, &value, &pmd->root);
 if (r) {
  dm_btree_del(&pmd->bl_info, dev_root);
  return r;
 }

 r = __open_device(pmd, dev, 1, &td);
 if (r) {
  dm_btree_remove(&pmd->tl_info, pmd->root, &key, &pmd->root);
  dm_btree_del(&pmd->bl_info, dev_root);
  return r;
 }
 __close_device(td);

 return r;
}
