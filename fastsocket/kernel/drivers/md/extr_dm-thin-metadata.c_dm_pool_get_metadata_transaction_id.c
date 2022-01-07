
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_pool_metadata {int root_lock; int trans_id; int fail_io; } ;


 int EINVAL ;
 int down_read (int *) ;
 int up_read (int *) ;

int dm_pool_get_metadata_transaction_id(struct dm_pool_metadata *pmd,
     uint64_t *result)
{
 int r = -EINVAL;

 down_read(&pmd->root_lock);
 if (!pmd->fail_io) {
  *result = pmd->trans_id;
  r = 0;
 }
 up_read(&pmd->root_lock);

 return r;
}
