
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block {int dummy; } ;
struct disk_bitmap_header {int dummy; } ;


 void* dm_block_data (struct dm_block*) ;

__attribute__((used)) static void *dm_bitmap_data(struct dm_block *b)
{
 return dm_block_data(b) + sizeof(struct disk_bitmap_header);
}
