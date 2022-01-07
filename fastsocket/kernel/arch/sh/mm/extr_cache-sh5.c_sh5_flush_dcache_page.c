
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int page_to_phys (void*) ;
 int sh64_dcache_purge_phy_page (int ) ;
 int wmb () ;

__attribute__((used)) static void sh5_flush_dcache_page(void *page)
{
 sh64_dcache_purge_phy_page(page_to_phys(page));
 wmb();
}
