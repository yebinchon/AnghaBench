
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_thin_device {int open_count; int list; } ;
struct dm_pool_metadata {int root; int tl_info; int details_root; int details_info; } ;
typedef int dm_thin_id ;


 int EBUSY ;
 int __close_device (struct dm_thin_device*) ;
 int __open_device (struct dm_pool_metadata*,int ,int ,struct dm_thin_device**) ;
 int dm_btree_remove (int *,int ,int *,int *) ;
 int kfree (struct dm_thin_device*) ;
 int list_del (int *) ;

__attribute__((used)) static int __delete_device(struct dm_pool_metadata *pmd, dm_thin_id dev)
{
 int r;
 uint64_t key = dev;
 struct dm_thin_device *td;


 r = __open_device(pmd, dev, 0, &td);
 if (r)
  return r;

 if (td->open_count > 1) {
  __close_device(td);
  return -EBUSY;
 }

 list_del(&td->list);
 kfree(td);
 r = dm_btree_remove(&pmd->details_info, pmd->details_root,
       &key, &pmd->details_root);
 if (r)
  return r;

 r = dm_btree_remove(&pmd->tl_info, pmd->root, &key, &pmd->root);
 if (r)
  return r;

 return 0;
}
