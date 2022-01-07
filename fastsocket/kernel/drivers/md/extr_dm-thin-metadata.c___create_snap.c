
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_thin_device {int dummy; } ;
struct dm_pool_metadata {int details_root; int details_info; int root; int tl_info; int time; int tm; } ;
struct disk_device_details {int dummy; } ;
typedef int dm_thin_id ;
typedef int dm_block_t ;
typedef struct disk_device_details __le64 ;


 int EEXIST ;
 int __close_device (struct dm_thin_device*) ;
 int __dm_bless_for_disk (struct disk_device_details*) ;
 int __open_device (struct dm_pool_metadata*,int ,int,struct dm_thin_device**) ;
 int __set_snapshot_details (struct dm_pool_metadata*,struct dm_thin_device*,int ,int ) ;
 struct disk_device_details cpu_to_le64 (int ) ;
 int dm_btree_insert (int *,int ,int *,struct disk_device_details*,int *) ;
 int dm_btree_lookup (int *,int ,int *,struct disk_device_details*) ;
 int dm_btree_remove (int *,int ,int *,int *) ;
 int dm_tm_dec (int ,int ) ;
 int dm_tm_inc (int ,int ) ;
 int le64_to_cpu (struct disk_device_details) ;

__attribute__((used)) static int __create_snap(struct dm_pool_metadata *pmd,
    dm_thin_id dev, dm_thin_id origin)
{
 int r;
 dm_block_t origin_root;
 uint64_t key = origin, dev_key = dev;
 struct dm_thin_device *td;
 struct disk_device_details details_le;
 __le64 value;


 r = dm_btree_lookup(&pmd->details_info, pmd->details_root,
       &dev_key, &details_le);
 if (!r)
  return -EEXIST;


 r = dm_btree_lookup(&pmd->tl_info, pmd->root, &key, &value);
 if (r)
  return r;
 origin_root = le64_to_cpu(value);


 dm_tm_inc(pmd->tm, origin_root);


 value = cpu_to_le64(origin_root);
 __dm_bless_for_disk(&value);
 key = dev;
 r = dm_btree_insert(&pmd->tl_info, pmd->root, &key, &value, &pmd->root);
 if (r) {
  dm_tm_dec(pmd->tm, origin_root);
  return r;
 }

 pmd->time++;

 r = __open_device(pmd, dev, 1, &td);
 if (r)
  goto bad;

 r = __set_snapshot_details(pmd, td, origin, pmd->time);
 __close_device(td);

 if (r)
  goto bad;

 return 0;

bad:
 dm_btree_remove(&pmd->tl_info, pmd->root, &key, &pmd->root);
 dm_btree_remove(&pmd->details_info, pmd->details_root,
   &key, &pmd->details_root);
 return r;
}
