
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int dummy; } ;
struct dm_block {int dummy; } ;
typedef scalar_t__ __le64 ;


 int THIN_SUPERBLOCK_LOCATION ;
 scalar_t__ cpu_to_le64 (int ) ;
 scalar_t__* dm_block_data (struct dm_block*) ;
 int dm_bm_block_size (struct dm_block_manager*) ;
 int dm_bm_read_lock (struct dm_block_manager*,int ,int *,struct dm_block**) ;
 int dm_bm_unlock (struct dm_block*) ;

__attribute__((used)) static int __superblock_all_zeroes(struct dm_block_manager *bm, int *result)
{
 int r;
 unsigned i;
 struct dm_block *b;
 __le64 *data_le, zero = cpu_to_le64(0);
 unsigned block_size = dm_bm_block_size(bm) / sizeof(__le64);




 r = dm_bm_read_lock(bm, THIN_SUPERBLOCK_LOCATION, ((void*)0), &b);
 if (r)
  return r;

 data_le = dm_block_data(b);
 *result = 1;
 for (i = 0; i < block_size; i++) {
  if (data_le[i] != zero) {
   *result = 0;
   break;
  }
 }

 return dm_bm_unlock(b);
}
