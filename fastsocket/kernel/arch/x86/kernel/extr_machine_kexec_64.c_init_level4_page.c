
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kimage {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 int ENOMEM ;
 unsigned long PAGE_MASK ;
 unsigned long PGDIR_SIZE ;
 unsigned long PTRS_PER_PGD ;
 int _KERNPG_TABLE ;
 int __pa (int *) ;
 int __pgd (int) ;
 int init_level3_page (struct kimage*,int *,unsigned long,unsigned long) ;
 struct page* kimage_alloc_control_pages (struct kimage*,int ) ;
 scalar_t__ page_address (struct page*) ;
 int pgd_clear (int ) ;
 int set_pgd (int ,int ) ;

__attribute__((used)) static int init_level4_page(struct kimage *image, pgd_t *level4p,
    unsigned long addr, unsigned long last_addr)
{
 unsigned long end_addr;
 int result;

 result = 0;
 addr &= PAGE_MASK;
 end_addr = addr + (PTRS_PER_PGD * PGDIR_SIZE);
 while ((addr < last_addr) && (addr < end_addr)) {
  struct page *page;
  pud_t *level3p;

  page = kimage_alloc_control_pages(image, 0);
  if (!page) {
   result = -ENOMEM;
   goto out;
  }
  level3p = (pud_t *)page_address(page);
  result = init_level3_page(image, level3p, addr, last_addr);
  if (result)
   goto out;
  set_pgd(level4p++, __pgd(__pa(level3p) | _KERNPG_TABLE));
  addr += PGDIR_SIZE;
 }

 while (addr < end_addr) {
  pgd_clear(level4p++);
  addr += PGDIR_SIZE;
 }
out:
 return result;
}
