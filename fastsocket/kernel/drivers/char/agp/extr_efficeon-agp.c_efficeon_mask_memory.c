
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long page_to_phys (struct page*) ;

__attribute__((used)) static inline unsigned long efficeon_mask_memory(struct page *page)
{
 unsigned long addr = page_to_phys(page);
 return addr | 0x00000001;
}
