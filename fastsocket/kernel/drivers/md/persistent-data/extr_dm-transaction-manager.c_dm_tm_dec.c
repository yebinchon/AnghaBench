
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int sm; int is_clone; } ;
typedef int dm_block_t ;


 int BUG_ON (int ) ;
 int dm_sm_dec_block (int ,int ) ;

void dm_tm_dec(struct dm_transaction_manager *tm, dm_block_t b)
{



 BUG_ON(tm->is_clone);

 dm_sm_dec_block(tm->sm, b);
}
