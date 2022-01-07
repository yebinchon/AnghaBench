
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_page {int pending; } ;
struct bitmap_counts {unsigned long chunkshift; struct bitmap_page* bp; } ;
typedef unsigned long sector_t ;


 unsigned long PAGE_COUNTER_SHIFT ;

__attribute__((used)) static void bitmap_set_pending(struct bitmap_counts *bitmap, sector_t offset)
{
 sector_t chunk = offset >> bitmap->chunkshift;
 unsigned long page = chunk >> PAGE_COUNTER_SHIFT;
 struct bitmap_page *bp = &bitmap->bp[page];

 if (!bp->pending)
  bp->pending = 1;
}
