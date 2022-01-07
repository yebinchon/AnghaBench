
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SIZE ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
i915_gem_swizzle_page(struct page *page)
{
 char temp[64];
 char *vaddr;
 int i;

 vaddr = kmap(page);

 for (i = 0; i < PAGE_SIZE; i += 128) {
  memcpy(temp, &vaddr[i], 64);
  memcpy(&vaddr[i], &vaddr[i + 64], 64);
  memcpy(&vaddr[i + 64], temp, 64);
 }

 kunmap(page);
}
