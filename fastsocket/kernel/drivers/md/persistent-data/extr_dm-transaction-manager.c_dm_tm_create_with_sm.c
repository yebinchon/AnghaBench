
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int dummy; } ;
struct dm_space_map {int dummy; } ;
struct dm_block_manager {int dummy; } ;
typedef int dm_block_t ;


 int dm_tm_create_internal (struct dm_block_manager*,int ,struct dm_transaction_manager**,struct dm_space_map**,int,int *,int ) ;

int dm_tm_create_with_sm(struct dm_block_manager *bm, dm_block_t sb_location,
    struct dm_transaction_manager **tm,
    struct dm_space_map **sm)
{
 return dm_tm_create_internal(bm, sb_location, tm, sm, 1, ((void*)0), 0);
}
