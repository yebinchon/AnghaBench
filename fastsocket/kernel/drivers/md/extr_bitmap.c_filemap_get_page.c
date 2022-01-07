
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bitmap_storage {scalar_t__ file_pages; struct page** filemap; } ;


 size_t file_page_index (struct bitmap_storage*,unsigned long) ;

__attribute__((used)) static inline struct page *filemap_get_page(struct bitmap_storage *store,
         unsigned long chunk)
{
 if (file_page_index(store, chunk) >= store->file_pages)
  return ((void*)0);
 return store->filemap[file_page_index(store, chunk)
         - file_page_index(store, 0)];
}
