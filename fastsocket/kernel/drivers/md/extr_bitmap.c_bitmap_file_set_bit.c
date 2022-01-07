
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; } ;
struct TYPE_2__ {unsigned long chunkshift; } ;
struct bitmap {int flags; int storage; TYPE_1__ counts; } ;
typedef unsigned long sector_t ;


 int BITMAP_HOSTENDIAN ;
 int BITMAP_PAGE_DIRTY ;
 int KM_USER0 ;
 unsigned long file_page_offset (int *,unsigned long) ;
 struct page* filemap_get_page (int *,unsigned long) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int pr_debug (char*,unsigned long,int ) ;
 int set_bit (unsigned long,void*) ;
 int set_bit_le (unsigned long,void*) ;
 int set_page_attr (struct bitmap*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bitmap_file_set_bit(struct bitmap *bitmap, sector_t block)
{
 unsigned long bit;
 struct page *page;
 void *kaddr;
 unsigned long chunk = block >> bitmap->counts.chunkshift;

 page = filemap_get_page(&bitmap->storage, chunk);
 if (!page)
  return;
 bit = file_page_offset(&bitmap->storage, chunk);


 kaddr = kmap_atomic(page, KM_USER0);
 if (test_bit(BITMAP_HOSTENDIAN, &bitmap->flags))
  set_bit(bit, kaddr);
 else
  set_bit_le(bit, kaddr);
 kunmap_atomic(kaddr, KM_USER0);
 pr_debug("set file bit %lu page %lu\n", bit, page->index);

 set_page_attr(bitmap, page->index, BITMAP_PAGE_DIRTY);
}
