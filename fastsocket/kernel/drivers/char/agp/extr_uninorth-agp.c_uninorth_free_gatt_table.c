
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct agp_bridge_data {scalar_t__ gatt_table_real; int gatt_table; void* current_size; } ;
struct TYPE_2__ {int page_order; } ;


 TYPE_1__* A_SIZE_32 (void*) ;
 int ClearPageReserved (struct page*) ;
 int PAGE_SIZE ;
 int free_pages (unsigned long,int) ;
 struct page* virt_to_page (char*) ;
 int vunmap (int ) ;

__attribute__((used)) static int uninorth_free_gatt_table(struct agp_bridge_data *bridge)
{
 int page_order;
 char *table, *table_end;
 void *temp;
 struct page *page;

 temp = bridge->current_size;
 page_order = A_SIZE_32(temp)->page_order;






 vunmap(bridge->gatt_table);
 table = (char *) bridge->gatt_table_real;
 table_end = table + ((PAGE_SIZE * (1 << page_order)) - 1);

 for (page = virt_to_page(table); page <= virt_to_page(table_end); page++)
  ClearPageReserved(page);

 free_pages((unsigned long) bridge->gatt_table_real, page_order);

 return 0;
}
