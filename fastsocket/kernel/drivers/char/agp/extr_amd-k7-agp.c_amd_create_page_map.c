
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd_page_map {unsigned long* real; unsigned long* remapped; } ;
struct TYPE_2__ {int scratch_page; } ;


 int ClearPageReserved (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SetPageReserved (int ) ;
 scalar_t__ __get_free_page (int ) ;
 TYPE_1__* agp_bridge ;
 int free_page (unsigned long) ;
 int global_cache_flush () ;
 unsigned long* ioremap_nocache (int ,int) ;
 int readl (unsigned long*) ;
 int set_memory_uc (unsigned long,int) ;
 int virt_to_page (unsigned long*) ;
 int virt_to_phys (unsigned long*) ;
 int writel (int ,unsigned long*) ;

__attribute__((used)) static int amd_create_page_map(struct amd_page_map *page_map)
{
 int i;

 page_map->real = (unsigned long *) __get_free_page(GFP_KERNEL);
 if (page_map->real == ((void*)0))
  return -ENOMEM;


 SetPageReserved(virt_to_page(page_map->real));
 global_cache_flush();
 page_map->remapped = ioremap_nocache(virt_to_phys(page_map->real),
         PAGE_SIZE);
 if (page_map->remapped == ((void*)0)) {
  ClearPageReserved(virt_to_page(page_map->real));
  free_page((unsigned long) page_map->real);
  page_map->real = ((void*)0);
  return -ENOMEM;
 }
 global_cache_flush();





 for (i = 0; i < PAGE_SIZE / sizeof(unsigned long); i++) {
  writel(agp_bridge->scratch_page, page_map->remapped+i);
  readl(page_map->remapped+i);
 }

 return 0;
}
