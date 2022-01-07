
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_storage {scalar_t__ sb_page; } ;
typedef int bitmap_super_t ;


 int PAGE_BITS ;

__attribute__((used)) static inline unsigned long file_page_offset(struct bitmap_storage *store,
          unsigned long chunk)
{
 if (store->sb_page)
  chunk += sizeof(bitmap_super_t) << 3;
 return chunk & (PAGE_BITS - 1);
}
