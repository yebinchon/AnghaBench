
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int bm; int sm; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef int dm_block_t ;


 int dm_block_data (struct dm_block*) ;
 int dm_bm_block_size (int ) ;
 int dm_bm_read_lock (int ,int ,struct dm_block_validator*,struct dm_block**) ;
 int dm_bm_unlock (struct dm_block*) ;
 int dm_bm_write_lock_zero (int ,int ,struct dm_block_validator*,struct dm_block**) ;
 int dm_sm_dec_block (int ,int ) ;
 int dm_sm_new_block (int ,int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int __shadow_block(struct dm_transaction_manager *tm, dm_block_t orig,
     struct dm_block_validator *v,
     struct dm_block **result)
{
 int r;
 dm_block_t new;
 struct dm_block *orig_block;

 r = dm_sm_new_block(tm->sm, &new);
 if (r < 0)
  return r;

 r = dm_sm_dec_block(tm->sm, orig);
 if (r < 0)
  return r;

 r = dm_bm_read_lock(tm->bm, orig, v, &orig_block);
 if (r < 0)
  return r;
 r = dm_bm_write_lock_zero(tm->bm, new, v, result);
 if (r) {
  dm_bm_unlock(orig_block);
  return r;
 }

 memcpy(dm_block_data(*result), dm_block_data(orig_block),
        dm_bm_block_size(tm->bm));

 dm_bm_unlock(orig_block);
 return r;
}
