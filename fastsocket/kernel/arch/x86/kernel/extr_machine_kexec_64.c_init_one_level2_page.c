
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kimage {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 unsigned long PMD_MASK ;
 int _KERNPG_TABLE ;
 unsigned long __PAGE_KERNEL_LARGE_EXEC ;
 int __pa (int *) ;
 int __pgd (int) ;
 int __pmd (unsigned long) ;
 int __pud (int) ;
 struct page* kimage_alloc_control_pages (struct kimage*,int ) ;
 int memset (int *,int ,int ) ;
 scalar_t__ page_address (struct page*) ;
 int pgd_index (unsigned long) ;
 int pgd_present (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 int set_pgd (int *,int ) ;
 int set_pmd (int *,int ) ;
 int set_pud (int *,int ) ;

__attribute__((used)) static int init_one_level2_page(struct kimage *image, pgd_t *pgd,
    unsigned long addr)
{
 pud_t *pud;
 pmd_t *pmd;
 struct page *page;
 int result = -ENOMEM;

 addr &= PMD_MASK;
 pgd += pgd_index(addr);
 if (!pgd_present(*pgd)) {
  page = kimage_alloc_control_pages(image, 0);
  if (!page)
   goto out;
  pud = (pud_t *)page_address(page);
  memset(pud, 0, PAGE_SIZE);
  set_pgd(pgd, __pgd(__pa(pud) | _KERNPG_TABLE));
 }
 pud = pud_offset(pgd, addr);
 if (!pud_present(*pud)) {
  page = kimage_alloc_control_pages(image, 0);
  if (!page)
   goto out;
  pmd = (pmd_t *)page_address(page);
  memset(pmd, 0, PAGE_SIZE);
  set_pud(pud, __pud(__pa(pmd) | _KERNPG_TABLE));
 }
 pmd = pmd_offset(pud, addr);
 if (!pmd_present(*pmd))
  set_pmd(pmd, __pmd(addr | __PAGE_KERNEL_LARGE_EXEC));
 result = 0;
out:
 return result;
}
