
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int dummy; } ;
struct dm_block {int dummy; } ;


 int dm_bm_unlock (struct dm_block*) ;

int dm_tm_unlock(struct dm_transaction_manager *tm, struct dm_block *b)
{
 return dm_bm_unlock(b);
}
