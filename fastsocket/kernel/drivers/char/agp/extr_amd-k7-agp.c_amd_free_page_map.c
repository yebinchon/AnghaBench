
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_page_map {scalar_t__ real; int remapped; } ;


 int ClearPageReserved (int ) ;
 int free_page (unsigned long) ;
 int iounmap (int ) ;
 int set_memory_wb (unsigned long,int) ;
 int virt_to_page (scalar_t__) ;

__attribute__((used)) static void amd_free_page_map(struct amd_page_map *page_map)
{

 iounmap(page_map->remapped);
 ClearPageReserved(virt_to_page(page_map->real));



 free_page((unsigned long) page_map->real);
}
