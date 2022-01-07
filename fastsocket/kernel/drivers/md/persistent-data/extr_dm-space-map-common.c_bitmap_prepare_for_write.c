
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct disk_bitmap_header {int not_used; int csum; int blocknr; } ;
typedef int __le32 ;


 int BITMAP_CSUM_XOR ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 struct disk_bitmap_header* dm_block_data (struct dm_block*) ;
 int dm_block_location (struct dm_block*) ;
 int dm_bm_checksum (int *,size_t,int ) ;

__attribute__((used)) static void bitmap_prepare_for_write(struct dm_block_validator *v,
         struct dm_block *b,
         size_t block_size)
{
 struct disk_bitmap_header *disk_header = dm_block_data(b);

 disk_header->blocknr = cpu_to_le64(dm_block_location(b));
 disk_header->csum = cpu_to_le32(dm_bm_checksum(&disk_header->not_used,
             block_size - sizeof(__le32),
             BITMAP_CSUM_XOR));
}
