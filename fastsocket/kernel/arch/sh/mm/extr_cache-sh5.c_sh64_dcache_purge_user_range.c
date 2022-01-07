
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PMD_MASK ;
 int sh64_dcache_purge_all () ;
 int sh64_dcache_purge_user_pages (struct mm_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static void sh64_dcache_purge_user_range(struct mm_struct *mm,
     unsigned long start, unsigned long end)
{
 int n_pages = ((end - start) >> PAGE_SHIFT);

 if (n_pages >= 64 || ((start ^ (end - 1)) & PMD_MASK)) {
  sh64_dcache_purge_all();
 } else {

  start &= PAGE_MASK;
  end = PAGE_ALIGN(end);
  sh64_dcache_purge_user_pages(mm, start, end);
 }
}
