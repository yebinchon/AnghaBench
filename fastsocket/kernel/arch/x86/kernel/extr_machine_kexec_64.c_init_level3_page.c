
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kimage {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;


 int ENOMEM ;
 unsigned long PAGE_MASK ;
 unsigned long PGDIR_SIZE ;
 scalar_t__ PUD_SIZE ;
 int _KERNPG_TABLE ;
 int __pa (int *) ;
 int __pud (int) ;
 int init_level2_page (int *,unsigned long) ;
 struct page* kimage_alloc_control_pages (struct kimage*,int ) ;
 scalar_t__ page_address (struct page*) ;
 int pud_clear (int ) ;
 int set_pud (int ,int ) ;

__attribute__((used)) static int init_level3_page(struct kimage *image, pud_t *level3p,
    unsigned long addr, unsigned long last_addr)
{
 unsigned long end_addr;
 int result;

 result = 0;
 addr &= PAGE_MASK;
 end_addr = addr + PGDIR_SIZE;
 while ((addr < last_addr) && (addr < end_addr)) {
  struct page *page;
  pmd_t *level2p;

  page = kimage_alloc_control_pages(image, 0);
  if (!page) {
   result = -ENOMEM;
   goto out;
  }
  level2p = (pmd_t *)page_address(page);
  init_level2_page(level2p, addr);
  set_pud(level3p++, __pud(__pa(level2p) | _KERNPG_TABLE));
  addr += PUD_SIZE;
 }

 while (addr < end_addr) {
  pud_clear(level3p++);
  addr += PUD_SIZE;
 }
out:
 return result;
}
