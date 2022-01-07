
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kmemcheck_shadow { ____Placeholder_kmemcheck_shadow } kmemcheck_shadow ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 void* kmemcheck_shadow_lookup (unsigned long) ;
 int memset (void*,int,unsigned int) ;

__attribute__((used)) static void mark_shadow(void *address, unsigned int n,
 enum kmemcheck_shadow status)
{
 unsigned long addr = (unsigned long) address;
 unsigned long last_addr = addr + n - 1;
 unsigned long page = addr & PAGE_MASK;
 unsigned long last_page = last_addr & PAGE_MASK;
 unsigned int first_n;
 void *shadow;


 if (page == last_page)
  first_n = n;
 else
  first_n = page + PAGE_SIZE - addr;

 shadow = kmemcheck_shadow_lookup(addr);
 if (shadow)
  memset(shadow, status, first_n);

 addr += first_n;
 n -= first_n;


 while (n >= PAGE_SIZE) {
  shadow = kmemcheck_shadow_lookup(addr);
  if (shadow)
   memset(shadow, status, PAGE_SIZE);

  addr += PAGE_SIZE;
  n -= PAGE_SIZE;
 }


 if (n > 0) {
  shadow = kmemcheck_shadow_lookup(addr);
  if (shadow)
   memset(shadow, status, n);
 }
}
