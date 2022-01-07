
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; } ;
struct TYPE_2__ {unsigned long chunkshift; } ;
struct bitmap {scalar_t__ allclean; int flags; int storage; TYPE_1__ counts; } ;
typedef unsigned long sector_t ;


 int BITMAP_HOSTENDIAN ;
 int BITMAP_PAGE_NEEDWRITE ;
 int BITMAP_PAGE_PENDING ;
 int KM_USER0 ;
 int clear_bit (unsigned long,void*) ;
 int clear_bit_le (unsigned long,void*) ;
 unsigned long file_page_offset (int *,unsigned long) ;
 struct page* filemap_get_page (int *,unsigned long) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int set_page_attr (struct bitmap*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int test_page_attr (struct bitmap*,int ,int ) ;

__attribute__((used)) static void bitmap_file_clear_bit(struct bitmap *bitmap, sector_t block)
{
 unsigned long bit;
 struct page *page;
 void *paddr;
 unsigned long chunk = block >> bitmap->counts.chunkshift;

 page = filemap_get_page(&bitmap->storage, chunk);
 if (!page)
  return;
 bit = file_page_offset(&bitmap->storage, chunk);
 paddr = kmap_atomic(page, KM_USER0);
 if (test_bit(BITMAP_HOSTENDIAN, &bitmap->flags))
  clear_bit(bit, paddr);
 else
  clear_bit_le(bit, paddr);
 kunmap_atomic(paddr, KM_USER0);
 if (!test_page_attr(bitmap, page->index, BITMAP_PAGE_NEEDWRITE)) {
  set_page_attr(bitmap, page->index, BITMAP_PAGE_PENDING);
  bitmap->allclean = 0;
 }
}
