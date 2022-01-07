
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct disk_bitmap_header {scalar_t__ csum; int not_used; int blocknr; } ;
typedef scalar_t__ __le32 ;


 int BITMAP_CSUM_XOR ;
 int DMERR_LIMIT (char*,scalar_t__,scalar_t__) ;
 int EILSEQ ;
 int ENOTBLK ;
 scalar_t__ cpu_to_le32 (int ) ;
 struct disk_bitmap_header* dm_block_data (struct dm_block*) ;
 scalar_t__ dm_block_location (struct dm_block*) ;
 int dm_bm_checksum (int *,size_t,int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int bitmap_check(struct dm_block_validator *v,
   struct dm_block *b,
   size_t block_size)
{
 struct disk_bitmap_header *disk_header = dm_block_data(b);
 __le32 csum_disk;

 if (dm_block_location(b) != le64_to_cpu(disk_header->blocknr)) {
  DMERR_LIMIT("bitmap check failed: blocknr %llu != wanted %llu",
       le64_to_cpu(disk_header->blocknr), dm_block_location(b));
  return -ENOTBLK;
 }

 csum_disk = cpu_to_le32(dm_bm_checksum(&disk_header->not_used,
            block_size - sizeof(__le32),
            BITMAP_CSUM_XOR));
 if (csum_disk != disk_header->csum) {
  DMERR_LIMIT("bitmap check failed: csum %u != wanted %u",
       le32_to_cpu(csum_disk), le32_to_cpu(disk_header->csum));
  return -EILSEQ;
 }

 return 0;
}
