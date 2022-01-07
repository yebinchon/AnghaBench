
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lguest_pages {int dummy; } ;


 int PAGE_SIZE ;
 int SHARED_SWITCHER_PAGES ;
 scalar_t__ SWITCHER_ADDR ;

__attribute__((used)) static struct lguest_pages *lguest_pages(unsigned int cpu)
{
 return &(((struct lguest_pages *)
    (SWITCHER_ADDR + SHARED_SWITCHER_PAGES*PAGE_SIZE))[cpu]);
}
