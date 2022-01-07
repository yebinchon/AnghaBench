
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ati_page_map {scalar_t__ real; } ;


 int free_page (unsigned long) ;
 int set_memory_wb (unsigned long,int) ;
 int unmap_page_from_agp (int ) ;
 int virt_to_page (scalar_t__) ;

__attribute__((used)) static void ati_free_page_map(struct ati_page_map *page_map)
{
 unmap_page_from_agp(virt_to_page(page_map->real));
 set_memory_wb((unsigned long)page_map->real, 1);
 free_page((unsigned long) page_map->real);
}
