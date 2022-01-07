
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct brd_device {int brd_lock; int brd_pages; } ;
typedef int sector_t ;
typedef int pgoff_t ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int GFP_NOIO ;
 int PAGE_SECTORS_SHIFT ;
 int __GFP_HIGHMEM ;
 int __GFP_ZERO ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int) ;
 struct page* brd_lookup_page (struct brd_device*,int) ;
 scalar_t__ radix_tree_insert (int *,int,struct page*) ;
 struct page* radix_tree_lookup (int *,int) ;
 scalar_t__ radix_tree_preload (int) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct page *brd_insert_page(struct brd_device *brd, sector_t sector)
{
 pgoff_t idx;
 struct page *page;
 gfp_t gfp_flags;

 page = brd_lookup_page(brd, sector);
 if (page)
  return page;
 gfp_flags = GFP_NOIO | __GFP_ZERO;

 gfp_flags |= __GFP_HIGHMEM;

 page = alloc_page(gfp_flags);
 if (!page)
  return ((void*)0);

 if (radix_tree_preload(GFP_NOIO)) {
  __free_page(page);
  return ((void*)0);
 }

 spin_lock(&brd->brd_lock);
 idx = sector >> PAGE_SECTORS_SHIFT;
 if (radix_tree_insert(&brd->brd_pages, idx, page)) {
  __free_page(page);
  page = radix_tree_lookup(&brd->brd_pages, idx);
  BUG_ON(!page);
  BUG_ON(page->index != idx);
 } else
  page->index = idx;
 spin_unlock(&brd->brd_lock);

 radix_tree_preload_end();

 return page;
}
