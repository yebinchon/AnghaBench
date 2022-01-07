
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int dummy; } ;
typedef int sector_t ;


 int PAGE_SIZE ;
 int __bitmap_start_sync (struct bitmap*,int,int*,int) ;

int bitmap_start_sync(struct bitmap *bitmap, sector_t offset, sector_t *blocks,
        int degraded)
{







 int rv = 0;
 sector_t blocks1;

 *blocks = 0;
 while (*blocks < (PAGE_SIZE>>9)) {
  rv |= __bitmap_start_sync(bitmap, offset,
       &blocks1, degraded);
  offset += blocks1;
  *blocks += blocks1;
 }
 return rv;
}
