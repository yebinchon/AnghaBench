
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct dm_pool_metadata {scalar_t__ trans_id; int root_lock; scalar_t__ fail_io; } ;


 int DMERR (char*) ;
 int EINVAL ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_pool_set_metadata_transaction_id(struct dm_pool_metadata *pmd,
     uint64_t current_id,
     uint64_t new_id)
{
 int r = -EINVAL;

 down_write(&pmd->root_lock);

 if (pmd->fail_io)
  goto out;

 if (pmd->trans_id != current_id) {
  DMERR("mismatched transaction id");
  goto out;
 }

 pmd->trans_id = new_id;
 r = 0;

out:
 up_write(&pmd->root_lock);

 return r;
}
