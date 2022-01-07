
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_transaction_manager {int sm; scalar_t__ is_clone; } ;
typedef int dm_block_t ;


 int EWOULDBLOCK ;
 int dm_sm_get_count (int ,int ,int *) ;

int dm_tm_ref(struct dm_transaction_manager *tm, dm_block_t b,
       uint32_t *result)
{
 if (tm->is_clone)
  return -EWOULDBLOCK;

 return dm_sm_get_count(tm->sm, b, result);
}
